// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pharmacy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pharmacy _$PharmacyFromJson(Map<String, dynamic> json) {
  return _Pharmacy.fromJson(json);
}

/// @nodoc
mixin _$Pharmacy {
  String get name => throw _privateConstructorUsedError;
  String get pharmacyId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PharmacyCopyWith<Pharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PharmacyCopyWith<$Res> {
  factory $PharmacyCopyWith(Pharmacy value, $Res Function(Pharmacy) then) =
      _$PharmacyCopyWithImpl<$Res>;
  $Res call({String name, String pharmacyId});
}

/// @nodoc
class _$PharmacyCopyWithImpl<$Res> implements $PharmacyCopyWith<$Res> {
  _$PharmacyCopyWithImpl(this._value, this._then);

  final Pharmacy _value;
  // ignore: unused_field
  final $Res Function(Pharmacy) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? pharmacyId = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyId: pharmacyId == freezed
          ? _value.pharmacyId
          : pharmacyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PharmacyCopyWith<$Res> implements $PharmacyCopyWith<$Res> {
  factory _$$_PharmacyCopyWith(
          _$_Pharmacy value, $Res Function(_$_Pharmacy) then) =
      __$$_PharmacyCopyWithImpl<$Res>;
  @override
  $Res call({String name, String pharmacyId});
}

/// @nodoc
class __$$_PharmacyCopyWithImpl<$Res> extends _$PharmacyCopyWithImpl<$Res>
    implements _$$_PharmacyCopyWith<$Res> {
  __$$_PharmacyCopyWithImpl(
      _$_Pharmacy _value, $Res Function(_$_Pharmacy) _then)
      : super(_value, (v) => _then(v as _$_Pharmacy));

  @override
  _$_Pharmacy get _value => super._value as _$_Pharmacy;

  @override
  $Res call({
    Object? name = freezed,
    Object? pharmacyId = freezed,
  }) {
    return _then(_$_Pharmacy(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pharmacyId: pharmacyId == freezed
          ? _value.pharmacyId
          : pharmacyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pharmacy implements _Pharmacy {
  const _$_Pharmacy({this.name = '', this.pharmacyId = ''});

  factory _$_Pharmacy.fromJson(Map<String, dynamic> json) =>
      _$$_PharmacyFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String pharmacyId;

  @override
  String toString() {
    return 'Pharmacy(name: $name, pharmacyId: $pharmacyId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pharmacy &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.pharmacyId, pharmacyId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pharmacyId));

  @JsonKey(ignore: true)
  @override
  _$$_PharmacyCopyWith<_$_Pharmacy> get copyWith =>
      __$$_PharmacyCopyWithImpl<_$_Pharmacy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PharmacyToJson(
      this,
    );
  }
}

abstract class _Pharmacy implements Pharmacy {
  const factory _Pharmacy({final String name, final String pharmacyId}) =
      _$_Pharmacy;

  factory _Pharmacy.fromJson(Map<String, dynamic> json) = _$_Pharmacy.fromJson;

  @override
  String get name;
  @override
  String get pharmacyId;
  @override
  @JsonKey(ignore: true)
  _$$_PharmacyCopyWith<_$_Pharmacy> get copyWith =>
      throw _privateConstructorUsedError;
}
