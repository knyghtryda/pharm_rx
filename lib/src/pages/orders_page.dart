import 'package:auto_route/auto_route.dart';
import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pharm_rx/src/pages/medication_list_tile.dart';

import '../data/medications.dart';
import '../models/pharmacy.dart';

class OrdersPage extends ConsumerStatefulWidget {
  final Pharmacy pharmacy;
  final List<String> medications;
  const OrdersPage({required this.pharmacy, this.medications = const [], Key? key}) : super(key: key);

  @override
  ConsumerState<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends ConsumerState<OrdersPage> {
  Set<String> selectedMedications = {};
  late List<Medication> suspensionList;
  @override
  void initState() {
    super.initState();
    suspensionList = widget.medications.map((e) => Medication(e)).toList();
    SuspensionUtil.setShowSuspensionStatus(suspensionList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order Page'), automaticallyImplyLeading: true),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          isExtended: true,
          backgroundColor: Colors.green,
          onPressed: () {
            ref.read(pharmacyOrdersProvider.notifier).addOrders(widget.pharmacy.pharmacyId, selectedMedications);
            context.router.pop();
          },
          label: const Text('Confirm Order')),
      body: AzListView(
        data: suspensionList,
        itemCount: suspensionList.length,
        itemBuilder: (context, index) {
          final medication = widget.medications[index];
          return MedicationListTile(
            medication: medication,
            selected: selectedMedications.contains(medication),
            onTap: () {
              setState(() {
                selectedMedications.contains(medication) ? selectedMedications.remove(medication) : selectedMedications.add(medication);
              });
            },
          );
        },
      ),
    );
  }
}

class Medication extends ISuspensionBean {
  final String name;
  final String tagIndex;

  Medication(this.name) : tagIndex = name.substring(0, 1);

  @override
  String getSuspensionTag() => tagIndex;
}
