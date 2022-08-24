import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pharm_rx/src/data/medications.dart';
import 'package:pharm_rx/src/models/pharmacy_details.dart';

class PharmacyDetailsPage extends ConsumerWidget {
  final PharmacyDetails pharmacyDetails;
  const PharmacyDetailsPage({required this.pharmacyDetails, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = pharmacyDetails.address;
    final cityStateZip = '${address.city}, ${address.usTerritory} ${address.postalCode}';
    final orderedMedications = ref.watch(pharmacyOrdersProvider);
    final hasOrders = orderedMedications[pharmacyDetails.id]?.isNotEmpty ?? false;
    return Scaffold(
      appBar: AppBar(title: const Text('Pharmacy Details'), automaticallyImplyLeading: true),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pharmacyDetails.name, style: TextStyle(fontSize: Theme.of(context).textTheme.headline5?.fontSize, fontWeight: FontWeight.w600)),
              const SizedBox(height: 10),
              if (address.streetAddress1.isNotEmpty) Text(address.streetAddress1),
              Text(cityStateZip),
              Text(pharmacyDetails.primaryPhoneNumber),
              const SizedBox(height: 10),
              if (pharmacyDetails.pharmacyHours.isNotEmpty)
                // cleans up mis-formatted hours
                Text(pharmacyDetails.pharmacyHours.splitMapJoin(
                  '\\n',
                  onMatch: (m) {
                    return '\n';
                  },
                  onNonMatch: (n) {
                    return n.trim();
                  },
                )),
              if (hasOrders) ...[
                const SizedBox(height: 10),
                const Text('Ordered Medications:', style: TextStyle(fontWeight: FontWeight.bold)),
                Text(orderedMedications[pharmacyDetails.id]!.toList().join(', ')),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
