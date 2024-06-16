// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleCityModel _$ScheduleCityModelFromJson(Map<String, dynamic> json) {
  return _ScheduleCityModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleCityModel {
  bool get success => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ScheduleData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCityModelCopyWith<ScheduleCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCityModelCopyWith<$Res> {
  factory $ScheduleCityModelCopyWith(
          ScheduleCityModel value, $Res Function(ScheduleCityModel) then) =
      _$ScheduleCityModelCopyWithImpl<$Res, ScheduleCityModel>;
  @useResult
  $Res call(
      {bool success, int statusCode, String message, List<ScheduleData> data});
}

/// @nodoc
class _$ScheduleCityModelCopyWithImpl<$Res, $Val extends ScheduleCityModel>
    implements $ScheduleCityModelCopyWith<$Res> {
  _$ScheduleCityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ScheduleData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleCityModelCopyWith<$Res>
    implements $ScheduleCityModelCopyWith<$Res> {
  factory _$$_ScheduleCityModelCopyWith(_$_ScheduleCityModel value,
          $Res Function(_$_ScheduleCityModel) then) =
      __$$_ScheduleCityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool success, int statusCode, String message, List<ScheduleData> data});
}

/// @nodoc
class __$$_ScheduleCityModelCopyWithImpl<$Res>
    extends _$ScheduleCityModelCopyWithImpl<$Res, _$_ScheduleCityModel>
    implements _$$_ScheduleCityModelCopyWith<$Res> {
  __$$_ScheduleCityModelCopyWithImpl(
      _$_ScheduleCityModel _value, $Res Function(_$_ScheduleCityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? statusCode = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_ScheduleCityModel(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ScheduleData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleCityModel implements _ScheduleCityModel {
  const _$_ScheduleCityModel(
      {required this.success,
      required this.statusCode,
      required this.message,
      required final List<ScheduleData> data})
      : _data = data;

  factory _$_ScheduleCityModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleCityModelFromJson(json);

  @override
  final bool success;
  @override
  final int statusCode;
  @override
  final String message;
  final List<ScheduleData> _data;
  @override
  List<ScheduleData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ScheduleCityModel(success: $success, statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleCityModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, statusCode, message,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleCityModelCopyWith<_$_ScheduleCityModel> get copyWith =>
      __$$_ScheduleCityModelCopyWithImpl<_$_ScheduleCityModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleCityModelToJson(
      this,
    );
  }
}

abstract class _ScheduleCityModel implements ScheduleCityModel {
  const factory _ScheduleCityModel(
      {required final bool success,
      required final int statusCode,
      required final String message,
      required final List<ScheduleData> data}) = _$_ScheduleCityModel;

  factory _ScheduleCityModel.fromJson(Map<String, dynamic> json) =
      _$_ScheduleCityModel.fromJson;

  @override
  bool get success;
  @override
  int get statusCode;
  @override
  String get message;
  @override
  List<ScheduleData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCityModelCopyWith<_$_ScheduleCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ScheduleData _$ScheduleDataFromJson(Map<String, dynamic> json) {
  return _ScheduleData.fromJson(json);
}

/// @nodoc
mixin _$ScheduleData {
  int get id => throw _privateConstructorUsedError;
  List<String> get date => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  Region get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_type')
  String? get dateType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDataCopyWith<ScheduleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDataCopyWith<$Res> {
  factory $ScheduleDataCopyWith(
          ScheduleData value, $Res Function(ScheduleData) then) =
      _$ScheduleDataCopyWithImpl<$Res, ScheduleData>;
  @useResult
  $Res call(
      {int id,
      List<String> date,
      String time,
      Region region,
      @JsonKey(name: 'date_type') String? dateType});

  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class _$ScheduleDataCopyWithImpl<$Res, $Val extends ScheduleData>
    implements $ScheduleDataCopyWith<$Res> {
  _$ScheduleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? time = null,
    Object? region = null,
    Object? dateType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as List<String>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      dateType: freezed == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionCopyWith<$Res> get region {
    return $RegionCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ScheduleDataCopyWith<$Res>
    implements $ScheduleDataCopyWith<$Res> {
  factory _$$_ScheduleDataCopyWith(
          _$_ScheduleData value, $Res Function(_$_ScheduleData) then) =
      __$$_ScheduleDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<String> date,
      String time,
      Region region,
      @JsonKey(name: 'date_type') String? dateType});

  @override
  $RegionCopyWith<$Res> get region;
}

/// @nodoc
class __$$_ScheduleDataCopyWithImpl<$Res>
    extends _$ScheduleDataCopyWithImpl<$Res, _$_ScheduleData>
    implements _$$_ScheduleDataCopyWith<$Res> {
  __$$_ScheduleDataCopyWithImpl(
      _$_ScheduleData _value, $Res Function(_$_ScheduleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? time = null,
    Object? region = null,
    Object? dateType = freezed,
  }) {
    return _then(_$_ScheduleData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value._date
          : date // ignore: cast_nullable_to_non_nullable
              as List<String>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Region,
      dateType: freezed == dateType
          ? _value.dateType
          : dateType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleData implements _ScheduleData {
  const _$_ScheduleData(
      {required this.id,
      required final List<String> date,
      required this.time,
      required this.region,
      @JsonKey(name: 'date_type') this.dateType})
      : _date = date;

  factory _$_ScheduleData.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDataFromJson(json);

  @override
  final int id;
  final List<String> _date;
  @override
  List<String> get date {
    if (_date is EqualUnmodifiableListView) return _date;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_date);
  }

  @override
  final String time;
  @override
  final Region region;
  @override
  @JsonKey(name: 'date_type')
  final String? dateType;

  @override
  String toString() {
    return 'ScheduleData(id: $id, date: $date, time: $time, region: $region, dateType: $dateType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleData &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._date, _date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.dateType, dateType) ||
                other.dateType == dateType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_date), time, region, dateType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDataCopyWith<_$_ScheduleData> get copyWith =>
      __$$_ScheduleDataCopyWithImpl<_$_ScheduleData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDataToJson(
      this,
    );
  }
}

abstract class _ScheduleData implements ScheduleData {
  const factory _ScheduleData(
      {required final int id,
      required final List<String> date,
      required final String time,
      required final Region region,
      @JsonKey(name: 'date_type') final String? dateType}) = _$_ScheduleData;

  factory _ScheduleData.fromJson(Map<String, dynamic> json) =
      _$_ScheduleData.fromJson;

  @override
  int get id;
  @override
  List<String> get date;
  @override
  String get time;
  @override
  Region get region;
  @override
  @JsonKey(name: 'date_type')
  String? get dateType;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDataCopyWith<_$_ScheduleData> get copyWith =>
      throw _privateConstructorUsedError;
}

Region _$RegionFromJson(Map<String, dynamic> json) {
  return _Region.fromJson(json);
}

/// @nodoc
mixin _$Region {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_id')
  int get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionCopyWith<Region> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionCopyWith<$Res> {
  factory $RegionCopyWith(Region value, $Res Function(Region) then) =
      _$RegionCopyWithImpl<$Res, Region>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'country_id') int countryId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$RegionCopyWithImpl<$Res, $Val extends Region>
    implements $RegionCopyWith<$Res> {
  _$RegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? countryId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegionCopyWith<$Res> implements $RegionCopyWith<$Res> {
  factory _$$_RegionCopyWith(_$_Region value, $Res Function(_$_Region) then) =
      __$$_RegionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'country_id') int countryId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$_RegionCopyWithImpl<$Res>
    extends _$RegionCopyWithImpl<$Res, _$_Region>
    implements _$$_RegionCopyWith<$Res> {
  __$$_RegionCopyWithImpl(_$_Region _value, $Res Function(_$_Region) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? countryId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Region(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Region implements _Region {
  const _$_Region(
      {required this.id,
      required this.title,
      @JsonKey(name: 'country_id') required this.countryId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$_Region.fromJson(Map<String, dynamic> json) =>
      _$$_RegionFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'country_id')
  final int countryId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'Region(id: $id, title: $title, countryId: $countryId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Region &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, countryId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegionCopyWith<_$_Region> get copyWith =>
      __$$_RegionCopyWithImpl<_$_Region>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegionToJson(
      this,
    );
  }
}

abstract class _Region implements Region {
  const factory _Region(
          {required final int id,
          required final String title,
          @JsonKey(name: 'country_id') required final int countryId,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$_Region;

  factory _Region.fromJson(Map<String, dynamic> json) = _$_Region.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'country_id')
  int get countryId;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_RegionCopyWith<_$_Region> get copyWith =>
      throw _privateConstructorUsedError;
}
