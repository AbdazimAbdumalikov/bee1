import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_dto.freezed.dart';
part 'partner_dto.g.dart';

@freezed
class PartnerDTO with _$PartnerDTO {
  const factory PartnerDTO({
    required int id,
    String? fio,
    String? name,
    String? surname,
    String? patronymic,
    String? birthDate,
    String? iin,
    String? docNumber,
    String? phone,
    String? email,
    String? ref,
    String? bankName,
    String? bankBik,
    String? correspondentAccount,
    String? checkingAccount,
    dynamic livingCity, // Можете также создать модель для города, если это необходимо
    dynamic tariff,
  }) = _PartnerDTO;

  factory PartnerDTO.fromJson(Map<String, dynamic> json) => _$PartnerDTOFromJson(json);
}