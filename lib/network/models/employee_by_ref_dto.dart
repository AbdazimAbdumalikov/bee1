class EmployeeDTO {
  final int id;
  final String fio;
  final String name;
  final String surname;
  final String? patronymic;
  final String? birthDate;
  final String? iin;
  final String? docNumber;
  final String phone;
  final String email;
  final String ref;
  final LivingCity livingCity;
  final String? bankName;
  final String? bankBik;
  final String? correspondentAccount;
  final String? checkingAccount;
  final String? tariff;

  EmployeeDTO({
    required this.id,
    required this.fio,
    required this.name,
    required this.surname,
    this.patronymic,
    this.birthDate,
    this.iin,
    this.docNumber,
    required this.phone,
    required this.email,
    required this.ref,
    required this.livingCity,
    this.bankName,
    this.bankBik,
    this.correspondentAccount,
    this.checkingAccount,
    this.tariff,
  });

  factory EmployeeDTO.fromJson(Map<String, dynamic> json) {
    return EmployeeDTO(
      id: json['id'],
      fio: json['fio'],
      name: json['name'] ?? "",
      surname: json['surname'] ?? "",
      patronymic: json['patronymic'],
      birthDate: json['birth_date'],
      iin: json['iin'],
      docNumber: json['doc_number'],
      phone: json['phone'],
      email: json['email'],
      ref: json['ref'],
      livingCity: LivingCity.fromJson(json['living_city']),
      bankName: json['bank_name'],
      bankBik: json['bank_bik'],
      correspondentAccount: json['correspondent_account'],
      checkingAccount: json['checking_account'],
      tariff: json['tariff'],
    );
  }
}

class LivingCity {
  final int id;
  final String name;
  final Direction direction;

  LivingCity({
    required this.id,
    required this.name,
    required this.direction,
  });

  factory LivingCity.fromJson(Map<String, dynamic> json) {
    return LivingCity(
      id: json['id'],
      name: json['name'],
      direction: Direction.fromJson(json['direction']),
    );
  }
}

class Direction {
  final int id;
  final String title;
  final int countryId;
  final String createdAt;
  final String updatedAt;

  Direction({
    required this.id,
    required this.title,
    required this.countryId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Direction.fromJson(Map<String, dynamic> json) {
    return Direction(
      id: json['id'],
      title: json['title'],
      countryId: json['country_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}