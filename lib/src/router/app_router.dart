import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pharm_rx/src/settings/settings_page.dart';

import '../models/pharmacy.dart';
import '../models/pharmacy_details.dart';
import '../pages/home_page.dart';
import '../pages/orders_page.dart';
import '../pages/pharmacy_details_page.dart';
import '../settings/settings_controller.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: OrdersPage),
    AutoRoute(page: PharmacyDetailsPage),
    AutoRoute(page: SettingsPage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
