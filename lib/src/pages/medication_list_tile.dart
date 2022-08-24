import 'package:flutter/material.dart';

class MedicationListTile extends StatelessWidget {
  final String medication;
  final bool selected;
  final VoidCallback onTap;
  const MedicationListTile({required this.medication, this.selected = false, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        dense: true,
        title: Text(medication),
        trailing: selected ? const Icon(Icons.check_circle) : null,
        onTap: onTap,
      ),
    );
  }
}
