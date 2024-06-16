// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PointDTO _$$_PointDTOFromJson(Map<String, dynamic> json) => _$_PointDTO(
      id: json['id'] as int,
      name: json['name'] as String?,
      address: json['address'] as String?,
      crossdockingId: json['crossdocking_id'] as String?,
      crossdockName: json['crossdocking_name'] as String?,
      crossdockLat:
          const StringOrNumConverter().fromJson(json['crossdocking_lat']),
      crossdockLong:
          const StringOrNumConverter().fromJson(json['crossdocking_long']),
      status: json['status'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      from: json['from'] as String?,
      to: json['to'] as String?,
      lat: const StringOrNumConverter().fromJson(json['lat']),
      long: const StringOrNumConverter().fromJson(json['long']),
      type: json['type'],
      avatar: json['avatar'],
      countProducts: json['count_products'] as int?,
      pointType: json['point_type'] as int?,
      isDeviation: json['is_deviation'] as int?,
      ourPharmacy: json['our_pharmacy'] as int?,
      eta: json['eta'] as String?,
      createdAt: json['created_at'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      containers: (json['containers'] as List<dynamic>?)
          ?.map((e) => ContainerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      pharmacyNumber: json['pharmacyNumber'] as String?,
    );

Map<String, dynamic> _$$_PointDTOToJson(_$_PointDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'crossdocking_id': instance.crossdockingId,
      'crossdocking_name': instance.crossdockName,
      'crossdocking_lat':
          const StringOrNumConverter().toJson(instance.crossdockLat),
      'crossdocking_long':
          const StringOrNumConverter().toJson(instance.crossdockLong),
      'status': instance.status,
      'date': instance.date?.toIso8601String(),
      'from': instance.from,
      'to': instance.to,
      'lat': const StringOrNumConverter().toJson(instance.lat),
      'long': const StringOrNumConverter().toJson(instance.long),
      'type': instance.type,
      'avatar': instance.avatar,
      'count_products': instance.countProducts,
      'point_type': instance.pointType,
      'is_deviation': instance.isDeviation,
      'our_pharmacy': instance.ourPharmacy,
      'eta': instance.eta,
      'created_at': instance.createdAt,
      'products': instance.products,
      'containers': instance.containers,
      'pharmacyNumber': instance.pharmacyNumber,
    };

_$_ProductDTO _$$_ProductDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductDTO(
      id: json['id'] as int,
      point: json['point'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_ProductDTOToJson(_$_ProductDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'point': instance.point,
      'name': instance.name,
      'code': instance.code,
      'status': instance.status,
    };

_$_ContainerDTO _$$_ContainerDTOFromJson(Map<String, dynamic> json) =>
    _$_ContainerDTO(
      containerId: json['id'] as int?,
      pointId: json['point_id'] as int?,
      code: json['code'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      isScanned: json['isScanned'] as bool? ?? false,
      status: json['status'] as int?,
      isSentAndStored: json['isSentAndStored'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ContainerDTOToJson(_$_ContainerDTO instance) =>
    <String, dynamic>{
      'id': instance.containerId,
      'point_id': instance.pointId,
      'code': instance.code,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'isScanned': instance.isScanned,
      'status': instance.status,
      'isSentAndStored': instance.isSentAndStored,
    };
