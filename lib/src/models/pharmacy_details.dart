import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';

part 'pharmacy_details.freezed.dart';
part 'pharmacy_details.g.dart';

@freezed
class PharmacyDetails with _$PharmacyDetails {
  const factory PharmacyDetails({
    @Default('') String id,
    @Default('') String localId,
    @Default('') String pharmacyChainId,
    @Default('') String name,
    @Default(false) bool acceptInvalidAddress,
    @Default(false) bool active,
    @Default(false) bool importActive,
    @Default(false) bool checkoutPharmacy,
    @Default(false) bool marketplacePharmacy,
    String? defaultTimeZone,
    @Default(Address()) Address address,
    @Default([]) List<String> deliverableStates,
    double? deliverySubsidyAmount,
    String? pharmacistInCharge,
    @Default('') String pharmacyHours,
    String? pharmacyLoginCode,
    @Default('') String pharmacySystem,
    @Default('') String pharmacyType,
    @Default([]) List<String> postalCodes,
    @Default('') String primaryPhoneNumber,
    @Default(false) bool testPharmacy,
  }) = _PharmacyDetails;
  factory PharmacyDetails.fromJson(Map<String, Object?> json) => _$PharmacyDetailsFromJson(json);
}

@freezed
class PharmacyDetailsResponse with _$PharmacyDetailsResponse {
  const factory PharmacyDetailsResponse({
    @Default('') String details,
    DateTime? generatedTs,
    @Default('') String href,
    @Default('') String responseCode,
    PharmacyDetails? value,
  }) = _PharmacyDetailsResponse;
  factory PharmacyDetailsResponse.fromJson(Map<String, Object?> json) => _$PharmacyDetailsResponseFromJson(json);
}
