import 'package:europharm_flutter/network/models/logistic_company_dto.dart';
import 'package:europharm_flutter/network/models/partner_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required int id,
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
    @JsonKey(name: 'logistic_company') LogisticCompanyDTO? logisticCompany,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) {
    return UserDTO(
      id: json['id'] as int? ?? 0,
      cityId: json['city']?['id'] as int? ?? 0,
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      date: json['date'] as String?,
      iin: json['iin'] as String?,
      role: json['role'] as String?,
      type: json['type'] as String?,
      avatar: json['avatar'],
      status: json['status'] as String?,
      partners: (json['partners'] as List<dynamic>?)
          ?.map((e) => PartnerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      logisticCompany: json['logistic_company'] != null
          ? LogisticCompanyDTO.fromJson(json['logistic_company'] as Map<String, dynamic>)
          : null,
    );
  }
}