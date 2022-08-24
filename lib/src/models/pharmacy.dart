import 'package:freezed_annotation/freezed_annotation.dart';

part 'pharmacy.freezed.dart';
part 'pharmacy.g.dart';

@freezed
class Pharmacy with _$Pharmacy {
  const factory Pharmacy({
    @Default('') String name,
    @Default('') String pharmacyId,
  }) = _Pharmacy;
  factory Pharmacy.fromJson(Map<String, Object?> json) => _$PharmacyFromJson(json);
}
