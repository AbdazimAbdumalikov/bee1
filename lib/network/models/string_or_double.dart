import 'package:json_annotation/json_annotation.dart';

class StringOrNumConverter implements JsonConverter<String?, dynamic> {
  const StringOrNumConverter();

  @override
  String? fromJson(dynamic json) {
    if (json is String) {
      return json;
    } else if (json is num) {
      return json.toString();
    }
    return null;
  }

  @override
  dynamic toJson(String? object) => object;
}