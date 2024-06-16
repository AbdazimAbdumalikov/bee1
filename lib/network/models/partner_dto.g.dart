// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PartnerDTO _$$_PartnerDTOFromJson(Map<String, dynamic> json) =>
    _$_PartnerDTO(
      id: json['id'] as int,
      fio: json['fio'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      patronymic: json['patronymic'] as String?,
      birthDate: json['birthDate'] as String?,
      iin: json['iin'] as String?,
      docNumber: json['docNumber'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      ref: json['ref'] as String?,
      bankName: json['bankName'] as String?,
      bankBik: json['bankBik'] as String?,
      correspondentAccount: json['correspondentAccount'] as String?,
      checkingAccount: json['checkingAccount'] as String?,
      livingCity: json['livingCity'],
      tariff: json['tariff'],
    );

Map<String, dynamic> _$$_PartnerDTOToJson(_$_PartnerDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fio': instance.fio,
      'name': instance.name,
      'surname': instance.surname,
      'patronymic': instance.patronymic,
      'birthDate': instance.birthDate,
      'iin': instance.iin,
      'docNumber': instance.docNumber,
      'phone': instance.phone,
      'email': instance.email,
      'ref': instance.ref,
      'bankName': instance.bankName,
      'bankBik': instance.bankBik,
      'correspondentAccount': instance.correspondentAccount,
      'checkingAccount': instance.checkingAccount,
      'livingCity': instance.livingCity,
      'tariff': instance.tariff,
    };
