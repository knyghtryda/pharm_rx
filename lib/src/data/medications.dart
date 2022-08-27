import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PharmacyOrdersNotifier extends StateNotifier<Map<String, Set<String>>> {
  PharmacyOrdersNotifier() : super({});
  void addOrders(String id, Set<String> orders) {
    debugPrint('Adding orders $orders to $id');
    // This has to be updated completely otherwise the state will not refresh properly.  That means just using update() is not possible here
    if (state.containsKey(id)) {
      state.remove(id);
    }
    state = {
      ...state,
      ...{id: orders}
    };
  }
}

final pharmacyOrdersProvider =
    StateNotifierProvider<PharmacyOrdersNotifier, Map<String, Set<String>>>((ref) => PharmacyOrdersNotifier());

Future<List<String>> getMedications() async {
  final contents = await rootBundle.loadString('assets/medicationListFromNIH.txt');
  return contents.split(',').map((e) => e.trim()).toList();
}
