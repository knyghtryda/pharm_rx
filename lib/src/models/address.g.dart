// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      externalId: json['externalId'] as String? ?? '',
      googlePlaceId: json['googlePlaceId'] as String? ?? '',
      isValid: json['isValid'] as bool? ?? false,
      addressType: json['addressType'] as String? ?? '',
      city: json['city'] as String? ?? '',
      latitude: (json['latitude'] as num?)?.toDouble() ?? double.infinity,
      longitude: (json['longitude'] as num?)?.toDouble() ?? double.infinity,
      postalCode: json['postalCode'] as String? ?? '',
      streetAddress1: json['streetAddress1'] as String? ?? '',
      usTerritory: json['usTerritory'] as String? ?? '',
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'externalId': instance.externalId,
      'googlePlaceId': instance.googlePlaceId,
      'isValid': instance.isValid,
      'addressType': instance.addressType,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'postalCode': instance.postalCode,
      'streetAddress1': instance.streetAddress1,
      'usTerritory': instance.usTerritory,
    };
