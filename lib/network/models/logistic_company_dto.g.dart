// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logistic_company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogisticCompanyDTO _$$_LogisticCompanyDTOFromJson(
        Map<String, dynamic> json) =>
    _$_LogisticCompanyDTO(
      id: json['id'] as int,
      name: json['name'] as String?,
      nameAbbr: json['name_abbr'] as String?,
      ceoFio: json['ceo_fio'] as String?,
      jurAddress: json['jur_address'] as String?,
      physAddress: json['phys_address'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      innKpp: json['inn_kpp'] as String?,
      bankName: json['bank_name'] as String?,
      bankBik: json['bank_bik'] as String?,
      correspondentAccount: json['correspondent_account'] as String?,
      checkingAccount: json['checking_account'] as String?,
      codeOkved: json['code_okved'] as String?,
      juridicAddress: json['juridic_address'] as String?,
      physicalAddress: json['physical_address'] as String?,
    );

Map<String, dynamic> _$$_LogisticCompanyDTOToJson(
        _$_LogisticCompanyDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_abbr': instance.nameAbbr,
      'ceo_fio': instance.ceoFio,
      'jur_address': instance.jurAddress,
      'phys_address': instance.physAddress,
      'email': instance.email,
      'phone': instance.phone,
      'inn_kpp': instance.innKpp,
      'bank_name': instance.bankName,
      'bank_bik': instance.bankBik,
      'correspondent_account': instance.correspondentAccount,
      'checking_account': instance.checkingAccount,
      'code_okved': instance.codeOkved,
      'juridic_address': instance.juridicAddress,
      'physical_address': instance.physicalAddress,
    };
