class MakeEmployeePartnerDTO {
  int? id;
  String? fio;
  String? name;
  String? surname;
  Null? patronymic;
  Null? birthDate;
  Null? iin;
  Null? docNumber;
  String? phone;
  String? email;
  String? ref;
  Null? bankName;
  Null? bankBik;
  Null? correspondentAccount;
  Null? checkingAccount;
  LivingCity? livingCity;
  Null? tariff;

  MakeEmployeePartnerDTO(
      {this.id,
        this.fio,
        this.name,
        this.surname,
        this.patronymic,
        this.birthDate,
        this.iin,
        this.docNumber,
        this.phone,
        this.email,
        this.ref,
        this.bankName,
        this.bankBik,
        this.correspondentAccount,
        this.checkingAccount,
        this.livingCity,
        this.tariff});

  MakeEmployeePartnerDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fio = json['fio'];
    name = json['name'];
    surname = json['surname'];
    patronymic = json['patronymic'];
    birthDate = json['birth_date'];
    iin = json['iin'];
    docNumber = json['doc_number'];
    phone = json['phone'];
    email = json['email'];
    ref = json['ref'];
    bankName = json['bank_name'];
    bankBik = json['bank_bik'];
    correspondentAccount = json['correspondent_account'];
    checkingAccount = json['checking_account'];
    livingCity = json['living_city'] != null
        ? new LivingCity.fromJson(json['living_city'])
        : null;
    tariff = json['tariff'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fio'] = this.fio;
    data['name'] = this.name;
    data['surname'] = this.surname;
    data['patronymic'] = this.patronymic;
    data['birth_date'] = this.birthDate;
    data['iin'] = this.iin;
    data['doc_number'] = this.docNumber;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['ref'] = this.ref;
    data['bank_name'] = this.bankName;
    data['bank_bik'] = this.bankBik;
    data['correspondent_account'] = this.correspondentAccount;
    data['checking_account'] = this.checkingAccount;
    if (this.livingCity != null) {
      data['living_city'] = this.livingCity!.toJson();
    }
    data['tariff'] = this.tariff;
    return data;
  }
}

class LivingCity {
  int? id;
  String? name;
  Direction? direction;
  int? isCross;
  Null? map;
  Null? lat;
  Null? long;
  Null? crossDockings;
  List<Null>? crossCitiesId;
  int? tranports;
  bool? isActive;
  Null? type;

  LivingCity(
      {this.id,
        this.name,
        this.direction,
        this.isCross,
        this.map,
        this.lat,
        this.long,
        this.crossDockings,
        this.crossCitiesId,
        this.tranports,
        this.isActive,
        this.type});

  LivingCity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    direction = json['direction'] != null
        ? new Direction.fromJson(json['direction'])
        : null;
    isCross = json['is_cross'];
    map = json['map'];
    lat = json['lat'];
    long = json['long'];
    crossDockings = json['cross_dockings'];
    if (json['cross_cities_id'] != null) {
      crossCitiesId = <Null>[];
      json['cross_cities_id'].forEach((v) {
        crossCitiesId!.add(v);
      });
    }
    tranports = json['tranports'];
    isActive = json['is_active'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    if (this.direction != null) {
      data['direction'] = this.direction!.toJson();
    }
    data['is_cross'] = this.isCross;
    data['map'] = this.map;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['cross_dockings'] = this.crossDockings;
    if (this.crossCitiesId != null) {
      data['cross_cities_id'] = this.crossCitiesId!
          .whereType<LivingCity>() // Оставляем только элементы типа LivingCity
          .map((v) => v.toJson())
          .toList();
    }
    data['tranports'] = this.tranports;
    data['is_active'] = this.isActive;
    data['type'] = this.type;
    return data;
  }
}

class Direction {
  int? id;
  String? title;
  int? countryId;
  String? createdAt;
  String? updatedAt;

  Direction(
      {this.id, this.title, this.countryId, this.createdAt, this.updatedAt});

  Direction.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    countryId = json['country_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['country_id'] = this.countryId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
