// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  int? get cityId => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get iin => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  dynamic get avatar => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<PartnerDTO>? get partners => throw _privateConstructorUsedError;
  @JsonKey(name: 'logistic_company')
  LogisticCompanyDTO? get logisticCompany => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'city') int? cityId,
      String? phone,
      String? name,
      String? surname,
      String? date,
      String? iin,
      String? role,
      String? type,
      dynamic avatar,
      String? status,
      List<PartnerDTO>? partners,
      @JsonKey(name: 'logistic_company') LogisticCompanyDTO? logisticCompany});

  $LogisticCompanyDTOCopyWith<$Res>? get logisticCompany;
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cityId = freezed,
    Object? phone = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? date = freezed,
    Object? iin = freezed,
    Object? role = freezed,
    Object? type = freezed,
    Object? avatar = freezed,
    Object? status = freezed,
    Object? partners = freezed,
    Object? logisticCompany = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      iin: freezed == iin
          ? _value.iin
          : iin // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      partners: freezed == partners
          ? _value.partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<PartnerDTO>?,
      logisticCompany: freezed == logisticCompany
          ? _value.logisticCompany
          : logisticCompany // ignore: cast_nullable_to_non_nullable
              as LogisticCompanyDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LogisticCompanyDTOCopyWith<$Res>? get logisticCompany {
    if (_value.logisticCompany == null) {
      return null;
    }

    return $LogisticCompanyDTOCopyWith<$Res>(_value.logisticCompany!, (value) {
      return _then(_value.copyWith(logisticCompany: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$_UserDTOCopyWith(
          _$_UserDTO value, $Res Function(_$_UserDTO) then) =
      __$$_UserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'city') int? cityId,
      String? phone,
      String? name,
      String? surname,
      String? date,
      String? iin,
      String? role,
      String? type,
      dynamic avatar,
      String? status,
      List<PartnerDTO>? partners,
      @JsonKey(name: 'logistic_company') LogisticCompanyDTO? logisticCompany});

  @override
  $LogisticCompanyDTOCopyWith<$Res>? get logisticCompany;
}

/// @nodoc
class __$$_UserDTOCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$_UserDTO>
    implements _$$_UserDTOCopyWith<$Res> {
  __$$_UserDTOCopyWithImpl(_$_UserDTO _value, $Res Function(_$_UserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cityId = freezed,
    Object? phone = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? date = freezed,
    Object? iin = freezed,
    Object? role = freezed,
    Object? type = freezed,
    Object? avatar = freezed,
    Object? status = freezed,
    Object? partners = freezed,
    Object? logisticCompany = freezed,
  }) {
    return _then(_$_UserDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      iin: freezed == iin
          ? _value.iin
          : iin // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      partners: freezed == partners
          ? _value._partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<PartnerDTO>?,
      logisticCompany: freezed == logisticCompany
          ? _value.logisticCompany
          : logisticCompany // ignore: cast_nullable_to_non_nullable
              as LogisticCompanyDTO?,
    ));
  }
}

/// @nodoc

class _$_UserDTO implements _UserDTO {
  const _$_UserDTO(
      {required this.id,
      @JsonKey(name: 'city') this.cityId,
      this.phone,
      this.name,
      this.surname,
      this.date,
      this.iin,
      this.role,
      this.type,
      this.avatar,
      this.status,
      final List<PartnerDTO>? partners,
      @JsonKey(name: 'logistic_company') this.logisticCompany})
      : _partners = partners;

  @override
  final int id;
  @override
  @JsonKey(name: 'city')
  final int? cityId;
  @override
  final String? phone;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? date;
  @override
  final String? iin;
  @override
  final String? role;
  @override
  final String? type;
  @override
  final dynamic avatar;
  @override
  final String? status;
  final List<PartnerDTO>? _partners;
  @override
  List<PartnerDTO>? get partners {
    final value = _partners;
    if (value == null) return null;
    if (_partners is EqualUnmodifiableListView) return _partners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'logistic_company')
  final LogisticCompanyDTO? logisticCompany;

  @override
  String toString() {
    return 'UserDTO(id: $id, cityId: $cityId, phone: $phone, name: $name, surname: $surname, date: $date, iin: $iin, role: $role, type: $type, avatar: $avatar, status: $status, partners: $partners, logisticCompany: $logisticCompany)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.iin, iin) || other.iin == iin) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._partners, _partners) &&
            (identical(other.logisticCompany, logisticCompany) ||
                other.logisticCompany == logisticCompany));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      cityId,
      phone,
      name,
      surname,
      date,
      iin,
      role,
      type,
      const DeepCollectionEquality().hash(avatar),
      status,
      const DeepCollectionEquality().hash(_partners),
      logisticCompany);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      __$$_UserDTOCopyWithImpl<_$_UserDTO>(this, _$identity);
}

abstract class _UserDTO implements UserDTO {
  const factory _UserDTO(
      {required final int id,
      @JsonKey(name: 'city') final int? cityId,
      final String? phone,
      final String? name,
      final String? surname,
      final String? date,
      final String? iin,
      final String? role,
      final String? type,
      final dynamic avatar,
      final String? status,
      final List<PartnerDTO>? partners,
      @JsonKey(name: 'logistic_company')
      final LogisticCompanyDTO? logisticCompany}) = _$_UserDTO;

  @override
  int get id;
  @override
  @JsonKey(name: 'city')
  int? get cityId;
  @override
  String? get phone;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get date;
  @override
  String? get iin;
  @override
  String? get role;
  @override
  String? get type;
  @override
  dynamic get avatar;
  @override
  String? get status;
  @override
  List<PartnerDTO>? get partners;
  @override
  @JsonKey(name: 'logistic_company')
  LogisticCompanyDTO? get logisticCompany;
  @override
  @JsonKey(ignore: true)
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
