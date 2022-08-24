// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pharmacy_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PharmacyDetails _$$_PharmacyDetailsFromJson(Map<String, dynamic> json) =>
    _$_PharmacyDetails(
      id: json['id'] as String? ?? '',
      localId: json['localId'] as String? ?? '',
      pharmacyChainId: json['pharmacyChainId'] as String? ?? '',
      name: json['name'] as String? ?? '',
      acceptInvalidAddress: json['acceptInvalidAddress'] as bool? ?? false,
      active: json['active'] as bool? ?? false,
      importActive: json['importActive'] as bool? ?? false,
      checkoutPharmacy: json['checkoutPharmacy'] as bool? ?? false,
      marketplacePharmacy: json['marketplacePharmacy'] as bool? ?? false,
      defaultTimeZone: json['defaultTimeZone'] as String?,
      address: json['address'] == null
          ? const Address()
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      deliverableStates: (json['deliverableStates'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      deliverySubsidyAmount:
          (json['deliverySubsidyAmount'] as num?)?.toDouble(),
      pharmacistInCharge: json['pharmacistInCharge'] as String?,
      pharmacyHours: json['pharmacyHours'] as String? ?? '',
      pharmacyLoginCode: json['pharmacyLoginCode'] as String?,
      pharmacySystem: json['pharmacySystem'] as String? ?? '',
      pharmacyType: json['pharmacyType'] as String? ?? '',
      postalCodes: (json['postalCodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      primaryPhoneNumber: json['primaryPhoneNumber'] as String? ?? '',
      testPharmacy: json['testPharmacy'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PharmacyDetailsToJson(_$_PharmacyDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'localId': instance.localId,
      'pharmacyChainId': instance.pharmacyChainId,
      'name': instance.name,
      'acceptInvalidAddress': instance.acceptInvalidAddress,
      'active': instance.active,
      'importActive': instance.importActive,
      'checkoutPharmacy': instance.checkoutPharmacy,
      'marketplacePharmacy': instance.marketplacePharmacy,
      'defaultTimeZone': instance.defaultTimeZone,
      'address': instance.address.toJson(),
      'deliverableStates': instance.deliverableStates,
      'deliverySubsidyAmount': instance.deliverySubsidyAmount,
      'pharmacistInCharge': instance.pharmacistInCharge,
      'pharmacyHours': instance.pharmacyHours,
      'pharmacyLoginCode': instance.pharmacyLoginCode,
      'pharmacySystem': instance.pharmacySystem,
      'pharmacyType': instance.pharmacyType,
      'postalCodes': instance.postalCodes,
      'primaryPhoneNumber': instance.primaryPhoneNumber,
      'testPharmacy': instance.testPharmacy,
    };

_$_PharmacyDetailsResponse _$$_PharmacyDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PharmacyDetailsResponse(
      details: json['details'] as String? ?? '',
      generatedTs: json['generatedTs'] == null
          ? null
          : DateTime.parse(json['generatedTs'] as String),
      href: json['href'] as String? ?? '',
      responseCode: json['responseCode'] as String? ?? '',
      value: json['value'] == null
          ? null
          : PharmacyDetails.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PharmacyDetailsResponseToJson(
        _$_PharmacyDetailsResponse instance) =>
    <String, dynamic>{
      'details': instance.details,
      'generatedTs': instance.generatedTs?.toIso8601String(),
      'href': instance.href,
      'responseCode': instance.responseCode,
      'value': instance.value?.toJson(),
    };
