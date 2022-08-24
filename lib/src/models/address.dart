import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    @Default('') String externalId,
    @Default('') String googlePlaceId,
    @Default(false) bool isValid,
    @Default('') String addressType,
    @Default('') String city,
    @Default(double.infinity) double latitude,
    @Default(double.infinity) double longitude,
    @Default('') String postalCode,
    @Default('') String streetAddress1,
    @Default('') String usTerritory,
  }) = _Address;

  factory Address.fromJson(Map<String, Object?> json) => _$AddressFromJson(json);
}
