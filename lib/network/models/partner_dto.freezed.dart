// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PartnerDTO _$PartnerDTOFromJson(Map<String, dynamic> json) {
  return _PartnerDTO.fromJson(json);
}

/// @nodoc
mixin _$PartnerDTO {
  int get id => throw _privateConstructorUsedError;
  String? get fio => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get patronymic => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  String? get iin => throw _privateConstructorUsedError;
  String? get docNumber => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get ref => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get bankBik => throw _privateConstructorUsedError;
  String? get correspondentAccount => throw _privateConstructorUsedError;
  String? get checkingAccount => throw _privateConstructorUsedError;
  dynamic get livingCity =>
      throw _privateConstructorUsedError; // Можете также создать модель для города, если это необходимо
  dynamic get tariff => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerDTOCopyWith<PartnerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerDTOCopyWith<$Res> {
  factory $PartnerDTOCopyWith(
          PartnerDTO value, $Res Function(PartnerDTO) then) =
      _$PartnerDTOCopyWithImpl<$Res, PartnerDTO>;
  @useResult
  $Res call(
      {int id,
      String? fio,
      String? name,
      String? surname,
      String? patronymic,
      String? birthDate,
      String? iin,
      String? docNumber,
      String? phone,
      String? email,
      String? ref,
      String? bankName,
      String? bankBik,
      String? correspondentAccount,
      String? checkingAccount,
      dynamic livingCity,
      dynamic tariff});
}

/// @nodoc
class _$PartnerDTOCopyWithImpl<$Res, $Val extends PartnerDTO>
    implements $PartnerDTOCopyWith<$Res> {
  _$PartnerDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fio = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? birthDate = freezed,
    Object? iin = freezed,
    Object? docNumber = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? ref = freezed,
    Object? bankName = freezed,
    Object? bankBik = freezed,
    Object? correspondentAccount = freezed,
    Object? checkingAccount = freezed,
    Object? livingCity = freezed,
    Object? tariff = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fio: freezed == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      iin: freezed == iin
          ? _value.iin
          : iin // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankBik: freezed == bankBik
          ? _value.bankBik
          : bankBik // ignore: cast_nullable_to_non_nullable
              as String?,
      correspondentAccount: freezed == correspondentAccount
          ? _value.correspondentAccount
          : correspondentAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      checkingAccount: freezed == checkingAccount
          ? _value.checkingAccount
          : checkingAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      livingCity: freezed == livingCity
          ? _value.livingCity
          : livingCity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tariff: freezed == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PartnerDTOCopyWith<$Res>
    implements $PartnerDTOCopyWith<$Res> {
  factory _$$_PartnerDTOCopyWith(
          _$_PartnerDTO value, $Res Function(_$_PartnerDTO) then) =
      __$$_PartnerDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? fio,
      String? name,
      String? surname,
      String? patronymic,
      String? birthDate,
      String? iin,
      String? docNumber,
      String? phone,
      String? email,
      String? ref,
      String? bankName,
      String? bankBik,
      String? correspondentAccount,
      String? checkingAccount,
      dynamic livingCity,
      dynamic tariff});
}

/// @nodoc
class __$$_PartnerDTOCopyWithImpl<$Res>
    extends _$PartnerDTOCopyWithImpl<$Res, _$_PartnerDTO>
    implements _$$_PartnerDTOCopyWith<$Res> {
  __$$_PartnerDTOCopyWithImpl(
      _$_PartnerDTO _value, $Res Function(_$_PartnerDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fio = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? birthDate = freezed,
    Object? iin = freezed,
    Object? docNumber = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? ref = freezed,
    Object? bankName = freezed,
    Object? bankBik = freezed,
    Object? correspondentAccount = freezed,
    Object? checkingAccount = freezed,
    Object? livingCity = freezed,
    Object? tariff = freezed,
  }) {
    return _then(_$_PartnerDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fio: freezed == fio
          ? _value.fio
          : fio // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      iin: freezed == iin
          ? _value.iin
          : iin // ignore: cast_nullable_to_non_nullable
              as String?,
      docNumber: freezed == docNumber
          ? _value.docNumber
          : docNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankBik: freezed == bankBik
          ? _value.bankBik
          : bankBik // ignore: cast_nullable_to_non_nullable
              as String?,
      correspondentAccount: freezed == correspondentAccount
          ? _value.correspondentAccount
          : correspondentAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      checkingAccount: freezed == checkingAccount
          ? _value.checkingAccount
          : checkingAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      livingCity: freezed == livingCity
          ? _value.livingCity
          : livingCity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tariff: freezed == tariff
          ? _value.tariff
          : tariff // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PartnerDTO implements _PartnerDTO {
  const _$_PartnerDTO(
      {required this.id,
      this.fio,
      this.name,
      this.surname,
      this.patronymic,
      this.birthDate,
      this.iin,
      this.docNumber,
      this.phone,
      this.email,
      this.ref,
      this.bankName,
      this.bankBik,
      this.correspondentAccount,
      this.checkingAccount,
      this.livingCity,
      this.tariff});

  factory _$_PartnerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PartnerDTOFromJson(json);

  @override
  final int id;
  @override
  final String? fio;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? patronymic;
  @override
  final String? birthDate;
  @override
  final String? iin;
  @override
  final String? docNumber;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? ref;
  @override
  final String? bankName;
  @override
  final String? bankBik;
  @override
  final String? correspondentAccount;
  @override
  final String? checkingAccount;
  @override
  final dynamic livingCity;
// Можете также создать модель для города, если это необходимо
  @override
  final dynamic tariff;

  @override
  String toString() {
    return 'PartnerDTO(id: $id, fio: $fio, name: $name, surname: $surname, patronymic: $patronymic, birthDate: $birthDate, iin: $iin, docNumber: $docNumber, phone: $phone, email: $email, ref: $ref, bankName: $bankName, bankBik: $bankBik, correspondentAccount: $correspondentAccount, checkingAccount: $checkingAccount, livingCity: $livingCity, tariff: $tariff)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartnerDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fio, fio) || other.fio == fio) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.iin, iin) || other.iin == iin) &&
            (identical(other.docNumber, docNumber) ||
                other.docNumber == docNumber) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankBik, bankBik) || other.bankBik == bankBik) &&
            (identical(other.correspondentAccount, correspondentAccount) ||
                other.correspondentAccount == correspondentAccount) &&
            (identical(other.checkingAccount, checkingAccount) ||
                other.checkingAccount == checkingAccount) &&
            const DeepCollectionEquality()
                .equals(other.livingCity, livingCity) &&
            const DeepCollectionEquality().equals(other.tariff, tariff));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fio,
      name,
      surname,
      patronymic,
      birthDate,
      iin,
      docNumber,
      phone,
      email,
      ref,
      bankName,
      bankBik,
      correspondentAccount,
      checkingAccount,
      const DeepCollectionEquality().hash(livingCity),
      const DeepCollectionEquality().hash(tariff));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PartnerDTOCopyWith<_$_PartnerDTO> get copyWith =>
      __$$_PartnerDTOCopyWithImpl<_$_PartnerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PartnerDTOToJson(
      this,
    );
  }
}

abstract class _PartnerDTO implements PartnerDTO {
  const factory _PartnerDTO(
      {required final int id,
      final String? fio,
      final String? name,
      final String? surname,
      final String? patronymic,
      final String? birthDate,
      final String? iin,
      final String? docNumber,
      final String? phone,
      final String? email,
      final String? ref,
      final String? bankName,
      final String? bankBik,
      final String? correspondentAccount,
      final String? checkingAccount,
      final dynamic livingCity,
      final dynamic tariff}) = _$_PartnerDTO;

  factory _PartnerDTO.fromJson(Map<String, dynamic> json) =
      _$_PartnerDTO.fromJson;

  @override
  int get id;
  @override
  String? get fio;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get patronymic;
  @override
  String? get birthDate;
  @override
  String? get iin;
  @override
  String? get docNumber;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get ref;
  @override
  String? get bankName;
  @override
  String? get bankBik;
  @override
  String? get correspondentAccount;
  @override
  String? get checkingAccount;
  @override
  dynamic get livingCity;
  @override // Можете также создать модель для города, если это необходимо
  dynamic get tariff;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerDTOCopyWith<_$_PartnerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
