// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleCityModel _$$_ScheduleCityModelFromJson(Map<String, dynamic> json) =>
    _$_ScheduleCityModel(
      success: json['success'] as bool,
      statusCode: json['statusCode'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => ScheduleData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ScheduleCityModelToJson(
        _$_ScheduleCityModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

_$_ScheduleData _$$_ScheduleDataFromJson(Map<String, dynamic> json) =>
    _$_ScheduleData(
      id: json['id'] as int,
      date: (json['date'] as List<dynamic>).map((e) => e as String).toList(),
      time: json['time'] as String,
      region: Region.fromJson(json['region'] as Map<String, dynamic>),
      dateType: json['date_type'] as String?,
    );

Map<String, dynamic> _$$_ScheduleDataToJson(_$_ScheduleData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'time': instance.time,
      'region': instance.region,
      'date_type': instance.dateType,
    };

_$_Region _$$_RegionFromJson(Map<String, dynamic> json) => _$_Region(
      id: json['id'] as int,
      title: json['title'] as String,
      countryId: json['country_id'] as int,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$_RegionToJson(_$_Region instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'country_id': instance.countryId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
