// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDTO _$OrderDTOFromJson(Map<String, dynamic> json) {
  return _OrderDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderDTO {
  int get id => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_name')
  String? get regionName => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get payment => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_city_id')
  CityDTO? get fromCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_city_id')
  CityDTO? get toCity => throw _privateConstructorUsedError;
  List<PointDTO?>? get points => throw _privateConstructorUsedError;
  @JsonKey(name: 'count_points')
  int? get countPoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  OrderStatusDTO? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_type')
  int? get orderType => throw _privateConstructorUsedError;
  bool get isCurrent => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  TransportDTO? get transport => throw _privateConstructorUsedError;
  @StringOrNumConverter()
  @JsonKey(name: 'order_volume')
  String? get orderVolume => throw _privateConstructorUsedError;
  @StringOrNumConverter()
  @JsonKey(name: 'order_weight')
  String? get orderWeight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDTOCopyWith<OrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDTOCopyWith<$Res> {
  factory $OrderDTOCopyWith(OrderDTO value, $Res Function(OrderDTO) then) =
      _$OrderDTOCopyWithImpl<$Res, OrderDTO>;
  @useResult
  $Res call(
      {int id,
      String? day,
      String? description,
      @JsonKey(name: 'region_name') String? regionName,
      String? from,
      String? to,
      String? status,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      String? payment,
      @JsonKey(name: 'from_city_id') CityDTO? fromCity,
      @JsonKey(name: 'to_city_id') CityDTO? toCity,
      List<PointDTO?>? points,
      @JsonKey(name: 'count_points') int? countPoints,
      @JsonKey(name: 'order_status') OrderStatusDTO? orderStatus,
      @JsonKey(name: 'order_type') int? orderType,
      bool isCurrent,
      String? address,
      TransportDTO? transport,
      @StringOrNumConverter()
      @JsonKey(name: 'order_volume')
      String? orderVolume,
      @StringOrNumConverter()
      @JsonKey(name: 'order_weight')
      String? orderWeight});

  $CityDTOCopyWith<$Res>? get fromCity;
  $CityDTOCopyWith<$Res>? get toCity;
  $OrderStatusDTOCopyWith<$Res>? get orderStatus;
  $TransportDTOCopyWith<$Res>? get transport;
}

/// @nodoc
class _$OrderDTOCopyWithImpl<$Res, $Val extends OrderDTO>
    implements $OrderDTOCopyWith<$Res> {
  _$OrderDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = freezed,
    Object? description = freezed,
    Object? regionName = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? payment = freezed,
    Object? fromCity = freezed,
    Object? toCity = freezed,
    Object? points = freezed,
    Object? countPoints = freezed,
    Object? orderStatus = freezed,
    Object? orderType = freezed,
    Object? isCurrent = null,
    Object? address = freezed,
    Object? transport = freezed,
    Object? orderVolume = freezed,
    Object? orderWeight = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      fromCity: freezed == fromCity
          ? _value.fromCity
          : fromCity // ignore: cast_nullable_to_non_nullable
              as CityDTO?,
      toCity: freezed == toCity
          ? _value.toCity
          : toCity // ignore: cast_nullable_to_non_nullable
              as CityDTO?,
      points: freezed == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointDTO?>?,
      countPoints: freezed == countPoints
          ? _value.countPoints
          : countPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatusDTO?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as int?,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      transport: freezed == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as TransportDTO?,
      orderVolume: freezed == orderVolume
          ? _value.orderVolume
          : orderVolume // ignore: cast_nullable_to_non_nullable
              as String?,
      orderWeight: freezed == orderWeight
          ? _value.orderWeight
          : orderWeight // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityDTOCopyWith<$Res>? get fromCity {
    if (_value.fromCity == null) {
      return null;
    }

    return $CityDTOCopyWith<$Res>(_value.fromCity!, (value) {
      return _then(_value.copyWith(fromCity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityDTOCopyWith<$Res>? get toCity {
    if (_value.toCity == null) {
      return null;
    }

    return $CityDTOCopyWith<$Res>(_value.toCity!, (value) {
      return _then(_value.copyWith(toCity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderStatusDTOCopyWith<$Res>? get orderStatus {
    if (_value.orderStatus == null) {
      return null;
    }

    return $OrderStatusDTOCopyWith<$Res>(_value.orderStatus!, (value) {
      return _then(_value.copyWith(orderStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransportDTOCopyWith<$Res>? get transport {
    if (_value.transport == null) {
      return null;
    }

    return $TransportDTOCopyWith<$Res>(_value.transport!, (value) {
      return _then(_value.copyWith(transport: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderDTOCopyWith<$Res> implements $OrderDTOCopyWith<$Res> {
  factory _$$_OrderDTOCopyWith(
          _$_OrderDTO value, $Res Function(_$_OrderDTO) then) =
      __$$_OrderDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? day,
      String? description,
      @JsonKey(name: 'region_name') String? regionName,
      String? from,
      String? to,
      String? status,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'end_date') DateTime? endDate,
      String? payment,
      @JsonKey(name: 'from_city_id') CityDTO? fromCity,
      @JsonKey(name: 'to_city_id') CityDTO? toCity,
      List<PointDTO?>? points,
      @JsonKey(name: 'count_points') int? countPoints,
      @JsonKey(name: 'order_status') OrderStatusDTO? orderStatus,
      @JsonKey(name: 'order_type') int? orderType,
      bool isCurrent,
      String? address,
      TransportDTO? transport,
      @StringOrNumConverter()
      @JsonKey(name: 'order_volume')
      String? orderVolume,
      @StringOrNumConverter()
      @JsonKey(name: 'order_weight')
      String? orderWeight});

  @override
  $CityDTOCopyWith<$Res>? get fromCity;
  @override
  $CityDTOCopyWith<$Res>? get toCity;
  @override
  $OrderStatusDTOCopyWith<$Res>? get orderStatus;
  @override
  $TransportDTOCopyWith<$Res>? get transport;
}

/// @nodoc
class __$$_OrderDTOCopyWithImpl<$Res>
    extends _$OrderDTOCopyWithImpl<$Res, _$_OrderDTO>
    implements _$$_OrderDTOCopyWith<$Res> {
  __$$_OrderDTOCopyWithImpl(
      _$_OrderDTO _value, $Res Function(_$_OrderDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = freezed,
    Object? description = freezed,
    Object? regionName = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? status = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? payment = freezed,
    Object? fromCity = freezed,
    Object? toCity = freezed,
    Object? points = freezed,
    Object? countPoints = freezed,
    Object? orderStatus = freezed,
    Object? orderType = freezed,
    Object? isCurrent = null,
    Object? address = freezed,
    Object? transport = freezed,
    Object? orderVolume = freezed,
    Object? orderWeight = freezed,
  }) {
    return _then(_$_OrderDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      regionName: freezed == regionName
          ? _value.regionName
          : regionName // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      fromCity: freezed == fromCity
          ? _value.fromCity
          : fromCity // ignore: cast_nullable_to_non_nullable
              as CityDTO?,
      toCity: freezed == toCity
          ? _value.toCity
          : toCity // ignore: cast_nullable_to_non_nullable
              as CityDTO?,
      points: freezed == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<PointDTO?>?,
      countPoints: freezed == countPoints
          ? _value.countPoints
          : countPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatusDTO?,
      orderType: freezed == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as int?,
      isCurrent: null == isCurrent
          ? _value.isCurrent
          : isCurrent // ignore: cast_nullable_to_non_nullable
              as bool,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      transport: freezed == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as TransportDTO?,
      orderVolume: freezed == orderVolume
          ? _value.orderVolume
          : orderVolume // ignore: cast_nullable_to_non_nullable
              as String?,
      orderWeight: freezed == orderWeight
          ? _value.orderWeight
          : orderWeight // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDTO implements _OrderDTO {
  const _$_OrderDTO(
      {required this.id,
      this.day,
      this.description,
      @JsonKey(name: 'region_name') this.regionName,
      this.from,
      this.to,
      this.status,
      @JsonKey(name: 'start_date') this.startDate,
      @JsonKey(name: 'end_date') this.endDate,
      this.payment,
      @JsonKey(name: 'from_city_id') this.fromCity,
      @JsonKey(name: 'to_city_id') this.toCity,
      final List<PointDTO?>? points,
      @JsonKey(name: 'count_points') this.countPoints,
      @JsonKey(name: 'order_status') this.orderStatus,
      @JsonKey(name: 'order_type') this.orderType,
      this.isCurrent = false,
      this.address,
      this.transport,
      @StringOrNumConverter() @JsonKey(name: 'order_volume') this.orderVolume,
      @StringOrNumConverter() @JsonKey(name: 'order_weight') this.orderWeight})
      : _points = points;

  factory _$_OrderDTO.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDTOFromJson(json);

  @override
  final int id;
  @override
  final String? day;
  @override
  final String? description;
  @override
  @JsonKey(name: 'region_name')
  final String? regionName;
  @override
  final String? from;
  @override
  final String? to;
  @override
  final String? status;
  @override
  @JsonKey(name: 'start_date')
  final DateTime? startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime? endDate;
  @override
  final String? payment;
  @override
  @JsonKey(name: 'from_city_id')
  final CityDTO? fromCity;
  @override
  @JsonKey(name: 'to_city_id')
  final CityDTO? toCity;
  final List<PointDTO?>? _points;
  @override
  List<PointDTO?>? get points {
    final value = _points;
    if (value == null) return null;
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'count_points')
  final int? countPoints;
  @override
  @JsonKey(name: 'order_status')
  final OrderStatusDTO? orderStatus;
  @override
  @JsonKey(name: 'order_type')
  final int? orderType;
  @override
  @JsonKey()
  final bool isCurrent;
  @override
  final String? address;
  @override
  final TransportDTO? transport;
  @override
  @StringOrNumConverter()
  @JsonKey(name: 'order_volume')
  final String? orderVolume;
  @override
  @StringOrNumConverter()
  @JsonKey(name: 'order_weight')
  final String? orderWeight;

  @override
  String toString() {
    return 'OrderDTO(id: $id, day: $day, description: $description, regionName: $regionName, from: $from, to: $to, status: $status, startDate: $startDate, endDate: $endDate, payment: $payment, fromCity: $fromCity, toCity: $toCity, points: $points, countPoints: $countPoints, orderStatus: $orderStatus, orderType: $orderType, isCurrent: $isCurrent, address: $address, transport: $transport, orderVolume: $orderVolume, orderWeight: $orderWeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.regionName, regionName) ||
                other.regionName == regionName) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.fromCity, fromCity) ||
                other.fromCity == fromCity) &&
            (identical(other.toCity, toCity) || other.toCity == toCity) &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.countPoints, countPoints) ||
                other.countPoints == countPoints) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            (identical(other.isCurrent, isCurrent) ||
                other.isCurrent == isCurrent) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.transport, transport) ||
                other.transport == transport) &&
            (identical(other.orderVolume, orderVolume) ||
                other.orderVolume == orderVolume) &&
            (identical(other.orderWeight, orderWeight) ||
                other.orderWeight == orderWeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        day,
        description,
        regionName,
        from,
        to,
        status,
        startDate,
        endDate,
        payment,
        fromCity,
        toCity,
        const DeepCollectionEquality().hash(_points),
        countPoints,
        orderStatus,
        orderType,
        isCurrent,
        address,
        transport,
        orderVolume,
        orderWeight
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDTOCopyWith<_$_OrderDTO> get copyWith =>
      __$$_OrderDTOCopyWithImpl<_$_OrderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDTOToJson(
      this,
    );
  }
}

abstract class _OrderDTO implements OrderDTO {
  const factory _OrderDTO(
      {required final int id,
      final String? day,
      final String? description,
      @JsonKey(name: 'region_name') final String? regionName,
      final String? from,
      final String? to,
      final String? status,
      @JsonKey(name: 'start_date') final DateTime? startDate,
      @JsonKey(name: 'end_date') final DateTime? endDate,
      final String? payment,
      @JsonKey(name: 'from_city_id') final CityDTO? fromCity,
      @JsonKey(name: 'to_city_id') final CityDTO? toCity,
      final List<PointDTO?>? points,
      @JsonKey(name: 'count_points') final int? countPoints,
      @JsonKey(name: 'order_status') final OrderStatusDTO? orderStatus,
      @JsonKey(name: 'order_type') final int? orderType,
      final bool isCurrent,
      final String? address,
      final TransportDTO? transport,
      @StringOrNumConverter()
      @JsonKey(name: 'order_volume')
      final String? orderVolume,
      @StringOrNumConverter()
      @JsonKey(name: 'order_weight')
      final String? orderWeight}) = _$_OrderDTO;

  factory _OrderDTO.fromJson(Map<String, dynamic> json) = _$_OrderDTO.fromJson;

  @override
  int get id;
  @override
  String? get day;
  @override
  String? get description;
  @override
  @JsonKey(name: 'region_name')
  String? get regionName;
  @override
  String? get from;
  @override
  String? get to;
  @override
  String? get status;
  @override
  @JsonKey(name: 'start_date')
  DateTime? get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime? get endDate;
  @override
  String? get payment;
  @override
  @JsonKey(name: 'from_city_id')
  CityDTO? get fromCity;
  @override
  @JsonKey(name: 'to_city_id')
  CityDTO? get toCity;
  @override
  List<PointDTO?>? get points;
  @override
  @JsonKey(name: 'count_points')
  int? get countPoints;
  @override
  @JsonKey(name: 'order_status')
  OrderStatusDTO? get orderStatus;
  @override
  @JsonKey(name: 'order_type')
  int? get orderType;
  @override
  bool get isCurrent;
  @override
  String? get address;
  @override
  TransportDTO? get transport;
  @override
  @StringOrNumConverter()
  @JsonKey(name: 'order_volume')
  String? get orderVolume;
  @override
  @StringOrNumConverter()
  @JsonKey(name: 'order_weight')
  String? get orderWeight;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDTOCopyWith<_$_OrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderStatusDTO _$OrderStatusDTOFromJson(Map<String, dynamic> json) {
  return _OrderStatusDTO.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusDTO {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_id')
  int get orderId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'stop_reason')
  String? get stopReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'stop_timer')
  DateTime? get stopTimer => throw _privateConstructorUsedError;
  String? get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String? get orderStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusDTOCopyWith<OrderStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusDTOCopyWith<$Res> {
  factory $OrderStatusDTOCopyWith(
          OrderStatusDTO value, $Res Function(OrderStatusDTO) then) =
      _$OrderStatusDTOCopyWithImpl<$Res, OrderStatusDTO>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      String? status,
      @JsonKey(name: 'stop_reason') String? stopReason,
      @JsonKey(name: 'stop_timer') DateTime? stopTimer,
      String? order,
      @JsonKey(name: 'order_status') String? orderStatus});
}

/// @nodoc
class _$OrderStatusDTOCopyWithImpl<$Res, $Val extends OrderStatusDTO>
    implements $OrderStatusDTOCopyWith<$Res> {
  _$OrderStatusDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? status = freezed,
    Object? stopReason = freezed,
    Object? stopTimer = freezed,
    Object? order = freezed,
    Object? orderStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      stopReason: freezed == stopReason
          ? _value.stopReason
          : stopReason // ignore: cast_nullable_to_non_nullable
              as String?,
      stopTimer: freezed == stopTimer
          ? _value.stopTimer
          : stopTimer // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderStatusDTOCopyWith<$Res>
    implements $OrderStatusDTOCopyWith<$Res> {
  factory _$$_OrderStatusDTOCopyWith(
          _$_OrderStatusDTO value, $Res Function(_$_OrderStatusDTO) then) =
      __$$_OrderStatusDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'order_id') int orderId,
      String? status,
      @JsonKey(name: 'stop_reason') String? stopReason,
      @JsonKey(name: 'stop_timer') DateTime? stopTimer,
      String? order,
      @JsonKey(name: 'order_status') String? orderStatus});
}

/// @nodoc
class __$$_OrderStatusDTOCopyWithImpl<$Res>
    extends _$OrderStatusDTOCopyWithImpl<$Res, _$_OrderStatusDTO>
    implements _$$_OrderStatusDTOCopyWith<$Res> {
  __$$_OrderStatusDTOCopyWithImpl(
      _$_OrderStatusDTO _value, $Res Function(_$_OrderStatusDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? status = freezed,
    Object? stopReason = freezed,
    Object? stopTimer = freezed,
    Object? order = freezed,
    Object? orderStatus = freezed,
  }) {
    return _then(_$_OrderStatusDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      stopReason: freezed == stopReason
          ? _value.stopReason
          : stopReason // ignore: cast_nullable_to_non_nullable
              as String?,
      stopTimer: freezed == stopTimer
          ? _value.stopTimer
          : stopTimer // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderStatusDTO implements _OrderStatusDTO {
  const _$_OrderStatusDTO(
      {required this.id,
      @JsonKey(name: 'order_id') required this.orderId,
      this.status,
      @JsonKey(name: 'stop_reason') this.stopReason,
      @JsonKey(name: 'stop_timer') this.stopTimer,
      this.order,
      @JsonKey(name: 'order_status') this.orderStatus});

  factory _$_OrderStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$$_OrderStatusDTOFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'order_id')
  final int orderId;
  @override
  final String? status;
  @override
  @JsonKey(name: 'stop_reason')
  final String? stopReason;
  @override
  @JsonKey(name: 'stop_timer')
  final DateTime? stopTimer;
  @override
  final String? order;
  @override
  @JsonKey(name: 'order_status')
  final String? orderStatus;

  @override
  String toString() {
    return 'OrderStatusDTO(id: $id, orderId: $orderId, status: $status, stopReason: $stopReason, stopTimer: $stopTimer, order: $order, orderStatus: $orderStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderStatusDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stopReason, stopReason) ||
                other.stopReason == stopReason) &&
            (identical(other.stopTimer, stopTimer) ||
                other.stopTimer == stopTimer) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderId, status, stopReason,
      stopTimer, order, orderStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStatusDTOCopyWith<_$_OrderStatusDTO> get copyWith =>
      __$$_OrderStatusDTOCopyWithImpl<_$_OrderStatusDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderStatusDTOToJson(
      this,
    );
  }
}

abstract class _OrderStatusDTO implements OrderStatusDTO {
  const factory _OrderStatusDTO(
          {required final int id,
          @JsonKey(name: 'order_id') required final int orderId,
          final String? status,
          @JsonKey(name: 'stop_reason') final String? stopReason,
          @JsonKey(name: 'stop_timer') final DateTime? stopTimer,
          final String? order,
          @JsonKey(name: 'order_status') final String? orderStatus}) =
      _$_OrderStatusDTO;

  factory _OrderStatusDTO.fromJson(Map<String, dynamic> json) =
      _$_OrderStatusDTO.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'order_id')
  int get orderId;
  @override
  String? get status;
  @override
  @JsonKey(name: 'stop_reason')
  String? get stopReason;
  @override
  @JsonKey(name: 'stop_timer')
  DateTime? get stopTimer;
  @override
  String? get order;
  @override
  @JsonKey(name: 'order_status')
  String? get orderStatus;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStatusDTOCopyWith<_$_OrderStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportDTO _$TransportDTOFromJson(Map<String, dynamic> json) {
  return _TransportDTO.fromJson(json);
}

/// @nodoc
mixin _$TransportDTO {
  int get id => throw _privateConstructorUsedError;
  TransportModelDTO? get model => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportDTOCopyWith<TransportDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportDTOCopyWith<$Res> {
  factory $TransportDTOCopyWith(
          TransportDTO value, $Res Function(TransportDTO) then) =
      _$TransportDTOCopyWithImpl<$Res, TransportDTO>;
  @useResult
  $Res call({int id, TransportModelDTO? model, String? number});

  $TransportModelDTOCopyWith<$Res>? get model;
}

/// @nodoc
class _$TransportDTOCopyWithImpl<$Res, $Val extends TransportDTO>
    implements $TransportDTOCopyWith<$Res> {
  _$TransportDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? model = freezed,
    Object? number = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TransportModelDTO?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransportModelDTOCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $TransportModelDTOCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TransportDTOCopyWith<$Res>
    implements $TransportDTOCopyWith<$Res> {
  factory _$$_TransportDTOCopyWith(
          _$_TransportDTO value, $Res Function(_$_TransportDTO) then) =
      __$$_TransportDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, TransportModelDTO? model, String? number});

  @override
  $TransportModelDTOCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_TransportDTOCopyWithImpl<$Res>
    extends _$TransportDTOCopyWithImpl<$Res, _$_TransportDTO>
    implements _$$_TransportDTOCopyWith<$Res> {
  __$$_TransportDTOCopyWithImpl(
      _$_TransportDTO _value, $Res Function(_$_TransportDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? model = freezed,
    Object? number = freezed,
  }) {
    return _then(_$_TransportDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TransportModelDTO?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransportDTO implements _TransportDTO {
  const _$_TransportDTO({required this.id, this.model, this.number});

  factory _$_TransportDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TransportDTOFromJson(json);

  @override
  final int id;
  @override
  final TransportModelDTO? model;
  @override
  final String? number;

  @override
  String toString() {
    return 'TransportDTO(id: $id, model: $model, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransportDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, model, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransportDTOCopyWith<_$_TransportDTO> get copyWith =>
      __$$_TransportDTOCopyWithImpl<_$_TransportDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportDTOToJson(
      this,
    );
  }
}

abstract class _TransportDTO implements TransportDTO {
  const factory _TransportDTO(
      {required final int id,
      final TransportModelDTO? model,
      final String? number}) = _$_TransportDTO;

  factory _TransportDTO.fromJson(Map<String, dynamic> json) =
      _$_TransportDTO.fromJson;

  @override
  int get id;
  @override
  TransportModelDTO? get model;
  @override
  String? get number;
  @override
  @JsonKey(ignore: true)
  _$$_TransportDTOCopyWith<_$_TransportDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

TransportModelDTO _$TransportModelDTOFromJson(Map<String, dynamic> json) {
  return _TransportModelDTO.fromJson(json);
}

/// @nodoc
mixin _$TransportModelDTO {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportModelDTOCopyWith<TransportModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportModelDTOCopyWith<$Res> {
  factory $TransportModelDTOCopyWith(
          TransportModelDTO value, $Res Function(TransportModelDTO) then) =
      _$TransportModelDTOCopyWithImpl<$Res, TransportModelDTO>;
  @useResult
  $Res call({int id, String? name});
}

/// @nodoc
class _$TransportModelDTOCopyWithImpl<$Res, $Val extends TransportModelDTO>
    implements $TransportModelDTOCopyWith<$Res> {
  _$TransportModelDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransportModelDTOCopyWith<$Res>
    implements $TransportModelDTOCopyWith<$Res> {
  factory _$$_TransportModelDTOCopyWith(_$_TransportModelDTO value,
          $Res Function(_$_TransportModelDTO) then) =
      __$$_TransportModelDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name});
}

/// @nodoc
class __$$_TransportModelDTOCopyWithImpl<$Res>
    extends _$TransportModelDTOCopyWithImpl<$Res, _$_TransportModelDTO>
    implements _$$_TransportModelDTOCopyWith<$Res> {
  __$$_TransportModelDTOCopyWithImpl(
      _$_TransportModelDTO _value, $Res Function(_$_TransportModelDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$_TransportModelDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransportModelDTO implements _TransportModelDTO {
  const _$_TransportModelDTO({required this.id, this.name});

  factory _$_TransportModelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TransportModelDTOFromJson(json);

  @override
  final int id;
  @override
  final String? name;

  @override
  String toString() {
    return 'TransportModelDTO(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransportModelDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransportModelDTOCopyWith<_$_TransportModelDTO> get copyWith =>
      __$$_TransportModelDTOCopyWithImpl<_$_TransportModelDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportModelDTOToJson(
      this,
    );
  }
}

abstract class _TransportModelDTO implements TransportModelDTO {
  const factory _TransportModelDTO(
      {required final int id, final String? name}) = _$_TransportModelDTO;

  factory _TransportModelDTO.fromJson(Map<String, dynamic> json) =
      _$_TransportModelDTO.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_TransportModelDTOCopyWith<_$_TransportModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
