import 'dart:convert';

import '../models/pharmacy.dart';

const String _pharmacyListJson = '''
{
"pharmacies": [
{
"name": "ReCept",
"pharmacyId": "NRxPh-HLRS"
},
{
"name": "My Community Pharmacy",
"pharmacyId": "NRxPh-BAC1"
},
{
"name": "MedTime Pharmacy",
"pharmacyId": "NRxPh-SJC1"
},
{
"name": "NY Pharmacy",
"pharmacyId": "NRxPh-ZEREiaYq"
}
]
}
''';

List<Pharmacy> getPharmacies() {
  List<dynamic> pharmacies = jsonDecode(_pharmacyListJson)['pharmacies'];
  return pharmacies.map((e) => Pharmacy.fromJson(e)).toList();
}
