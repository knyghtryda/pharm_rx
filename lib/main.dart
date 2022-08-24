import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/api/api.dart';
import 'src/app.dart';
import 'src/data/medications.dart';
import 'src/data/pharmacies.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // registers all globals
  GetIt.I.registerSingleton(settingsController);
  GetIt.I.registerSingleton(getPharmacies());
  GetIt.I.registerSingleton(await getMedications(), instanceName: 'medications');

  // Registers REST api client
  GetIt.I.registerSingleton(RestClient(Dio()));

  runApp(ProviderScope(child: MyApp()));
}
