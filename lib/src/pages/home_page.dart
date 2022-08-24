import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pharm_rx/src/api/api.dart';
import 'package:pharm_rx/src/data/medications.dart';
import 'package:pharm_rx/src/models/pharmacy.dart';
import 'package:pharm_rx/src/pages/pharmacy_list_tile.dart';
import 'package:pharm_rx/src/router/app_router.dart';
import 'package:pharm_rx/src/settings/settings_controller.dart';
import 'package:vector_math/vector_math.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  static final _currentPosition = Vector2(37.48771670017411, -122.22652739630438);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pharmacyOrders = ref.watch(pharmacyOrdersProvider);

    Future<Pharmacy?> getNearest() async {
      Map<Pharmacy, double> pharmacies = {};

      for (Pharmacy pharmacy in GetIt.I.get<List<Pharmacy>>()) {
        final currentPharmacyDetails = (await GetIt.I.get<RestClient>().getPharmacyDetails(pharmacy.pharmacyId)).value;
        if (currentPharmacyDetails != null) {
          final result = Vector2(currentPharmacyDetails.address.latitude, currentPharmacyDetails.address.longitude) - _currentPosition;
          pharmacies[pharmacy] = result.length2;
        }
      }
      final sortedPharmacies = pharmacies.entries.toList()..sort((a, b) => a.value.compareTo(b.value));
      for (MapEntry<Pharmacy, double> entry in sortedPharmacies) {
        if (!(ref.read(pharmacyOrdersProvider)[entry.key.pharmacyId]?.isNotEmpty ?? false)) return entry.key;
      }
      return null;
    }

    return Scaffold(
      appBar: AppBar(title: const Text('PharmRx'), actions: [
        IconButton(
            onPressed: () {
              context.router.push(SettingsRoute(controller: GetIt.I.get<SettingsController>()));
            },
            icon: const Icon(Icons.settings))
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final nearest = await getNearest();
          if (nearest != null) {
            context.router.push(OrdersRoute(pharmacy: nearest, medications: GetIt.I.get(instanceName: 'medications')));
          } else {
            Fluttertoast.showToast(msg: 'Unable to place order');
            debugPrint('nearest pharmacy failed!');
          }
        },
        label: const Text('Nearest'),
        icon: const Icon(Icons.local_pharmacy),
      ),
      body: ListView(
          children: GetIt.I
              .get<List<Pharmacy>>()
              .map((e) => PharmacyListTile(
                    pharmacy: e,
                    hasOrder: pharmacyOrders[e.pharmacyId]?.isNotEmpty ?? false,
                  ))
              .toList()),
    );
  }
}
