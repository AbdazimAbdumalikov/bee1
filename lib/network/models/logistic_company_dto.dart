import 'package:freezed_annotation/freezed_annotation.dart';

part 'logistic_company_dto.freezed.dart';
part 'logistic_company_dto.g.dart';

@freezed
class LogisticCompanyDTO with _$LogisticCompanyDTO {
  const factory LogisticCompanyDTO({
    required int id,
    String? name,
    @JsonKey(name: 'name_abbr') String? nameAbbr,
    @JsonKey(name: 'ceo_fio') String? ceoFio,
    @JsonKey(name: 'jur_address') String? jurAddress,
    @JsonKey(name: 'phys_address') String? physAddress,
    String? email,
    String? phone,
    @JsonKey(name: 'inn_kpp') String? innKpp,
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'bank_bik') String? bankBik,
    @JsonKey(name: 'correspondent_account') String? correspondentAccount,
    @JsonKey(name: 'checking_account') String? checkingAccount,
    @JsonKey(name: 'code_okved') String? codeOkved,
    @JsonKey(name: 'juridic_address') String? juridicAddress,
    @JsonKey(name: 'physical_address') String? physicalAddress,
    // Add other fields as needed
  }) = _LogisticCompanyDTO;

  factory LogisticCompanyDTO.fromJson(Map<String, dynamic> json) => _$LogisticCompanyDTOFromJson(json);
}