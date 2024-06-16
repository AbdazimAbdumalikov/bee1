import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_city_model.freezed.dart';
part 'schedule_city_model.g.dart';

@freezed
abstract class ScheduleCityModel with _$ScheduleCityModel {
  const factory ScheduleCityModel({
    required bool success,
    required int statusCode,
    required String message,
    required List<ScheduleData> data,
  }) = _ScheduleCityModel;

  factory ScheduleCityModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleCityModelFromJson(json);
}

@freezed
abstract class ScheduleData with _$ScheduleData {
  const factory ScheduleData({
    required int id,
    required List<String> date,
    required String time,
    required Region region,
    @JsonKey(name: 'date_type') String? dateType,
  }) = _ScheduleData;

  factory ScheduleData.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDataFromJson(json);
}

@freezed
abstract class Region with _$Region {
  const factory Region({
    required int id,
    required String title,
    @JsonKey(name: 'country_id') required int countryId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}