import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_it/get_it.dart';
import 'package:pharm_rx/src/api/api.dart';
import 'package:pharm_rx/src/models/pharmacy.dart';
import 'package:pharm_rx/src/router/app_router.dart';

class PharmacyListTile extends StatelessWidget {
  final Pharmacy pharmacy;
  final bool hasOrder;
  const PharmacyListTile({required this.pharmacy, this.hasOrder = false, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(pharmacy.name, style: const TextStyle(fontWeight: FontWeight.bold)),
        trailing: hasOrder ? const Icon(Icons.check_circle_outline, color: Colors.green) : null,
        onTap: () async {
          final pharmacyDetails = (await GetIt.I.get<RestClient>().getPharmacyDetails(pharmacy.pharmacyId)).value;
          if (pharmacyDetails != null) {
            context.router.push(PharmacyDetailsRoute(pharmacyDetails: pharmacyDetails));
          } else {
            Fluttertoast.showToast(msg: 'Unable to load Pharmacy Details');
          }
        },
      ),
    );
  }
}
