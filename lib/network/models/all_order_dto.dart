import 'dart:convert';

import 'package:europharm_flutter/network/models/user_dto.dart';

import 'dto_models/response/login_response.dart';

class ApiResponse {
  bool success;
  int statusCode;
  String message;
  List<Order> data;

  ApiResponse({
    required this.success,
    required this.statusCode,
    required this.message,
    required this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      success: json['success'],
      statusCode: json['statusCode'],
      message: json['message'],
      data: List<Order>.from(json['data'].map((x) => Order.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'statusCode': statusCode,
      'message': message,
      'data': List<dynamic>.from(data.map((x) => x.toJson())),
    };
  }
}

class Order {
  int id;
  String day;
  String? direction;
  String from;
  String to;
  double? fromLat;
  double? fromLong;
  double? toLat;
  double? toLong;
  String status;
  List<DriverStatus> driverStatus;
  Employee? employee;
  String startDate;
  String endDate;
  dynamic payment;
  Map<String, dynamic> images;
  OrderStatus? orderStatus;
  int orderWeight;
  List<Point> points;
  dynamic driver;
  dynamic transport;
  int orderVolume;
  String createdAt;
  dynamic declineDrivers;

  Order({
    required this.id,
    required this.day,
    this.direction,
    required this.from,
    required this.to,
    this.fromLat,
    this.fromLong,
    this.toLat,
    this.toLong,
    required this.status,
    required this.driverStatus,
    this.employee,
    required this.startDate,
    required this.endDate,
    this.payment,
    required this.images,
    this.orderStatus,
    required this.orderWeight,
    required this.points,
    this.driver,
    this.transport,
    required this.orderVolume,
    required this.createdAt,
    this.declineDrivers,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      day: json['day'],
      direction: json['direction'],
      from: json['from'],
      to: json['to'],
      fromLat: json['from_lat'],
      fromLong: json['from_long'],
      toLat: json['to_lat'],
      toLong: json['to_long'],
      status: json['status'],
      driverStatus: List<DriverStatus>.from(json['driver_status'].map((x) => DriverStatus.fromJson(x))),
      employee: json['employee'] != null ? Employee.fromJson(json['employee']) : null,
      startDate: json['start_date'],
      endDate: json['end_date'],
      payment: json['payment'],
      images: Map<String, dynamic>.from(json['images']),
      orderStatus: json['order_status'] != null ? OrderStatus.fromJson(json['order_status']) : null,
      orderWeight: json['order_weight'],
      points: List<Point>.from(json['points'].map((x) => Point.fromJson(x))),
      driver: json['driver'],
      transport: json['transport'],
      orderVolume: json['order_volume'],
      createdAt: json['created_at'],
      declineDrivers: json['decline_drivers'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'day': day,
      'direction': direction,
      'from': from,
      'to': to,
      'from_lat': fromLat,
      'from_long': fromLong,
      'to_lat': toLat,
      'to_long': toLong,
      'status': status,
      'driver_status': List<dynamic>.from(driverStatus.map((x) => x.toJson())),
      'employee': employee?.toJson(),
      'start_date': startDate,
      'end_date': endDate,
      'payment': payment,
      'images': images,
      'order_status': orderStatus?.toJson(),
      'order_weight': orderWeight,
      'points': List<dynamic>.from(points.map((x) => x.toJson())),
      'driver': driver,
      'transport': transport,
      'order_volume': orderVolume,
      'created_at': createdAt,
      'decline_drivers': declineDrivers,
    };
  }
}

// Продолжение классов DriverStatus, Employee, OrderStatus, Point и Product будет здесь...

class DriverStatus {
  String userName;
  int id;
  int orderId;
  int userId;
  String status;
  String? stopReason;
  int countSnack;
  int countRelax;
  String? finishedStatus;
  int? minut;
  String? stopTimer;
  String createdAt;
  String updatedAt;
  int signed;
  String? signedTtn;
  String? signedDate;

  DriverStatus({
    required this.userName,
    required this.id,
    required this.orderId,
    required this.userId,
    required this.status,
    this.stopReason,
    required this.countSnack,
    required this.countRelax,
    this.finishedStatus,
    this.minut,
    this.stopTimer,
    required this.createdAt,
    required this.updatedAt,
    required this.signed,
    this.signedTtn,
    this.signedDate,
  });

  factory DriverStatus.fromJson(Map<String, dynamic> json) {
    return DriverStatus(
      userName: json['user_name'],
      id: json['id'],
      orderId: json['order_id'],
      userId: json['user_id'],
      status: json['status'],
      stopReason: json['stop_reason'],
      countSnack: json['count_snack'],
      countRelax: json['count_relax'],
      finishedStatus: json['finished_status'],
      minut: json['minut'],
      stopTimer: json['stop_timer'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      signed: json['signed'],
      signedTtn: json['signed_ttn'],
      signedDate: json['signed_date'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_name': userName,
      'id': id,
      'order_id': orderId,
      'user_id': userId,
      'status': status,
      'stop_reason': stopReason,
      'count_snack': countSnack,
      'count_relax': countRelax,
      'finished_status': finishedStatus,
      'minut': minut,
      'stop_timer': stopTimer,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'signed': signed,
      'signed_ttn': signedTtn,
      'signed_date': signedDate,
    };
  }
}

class Employee {
  int id;
  String fio;
  String? name;
  String? surname;
  String? patronymic;
  String? birthDate;
  String? iin;
  String? docNumber;
  String phone;
  String? email;
  String password;
  String token;
  String ref;
  String? bankName;
  String? bankBik;
  String? correspondentAccount;
  String? checkingAccount;
  int? livingCityId;
  String createdAt;
  String updatedAt;

  Employee({
    required this.id,
    required this.fio,
    this.name,
    this.surname,
    this.patronymic,
    this.birthDate,
    this.iin,
    this.docNumber,
    required this.phone,
    this.email,
    required this.password,
    required this.token,
    required this.ref,
    this.bankName,
    this.bankBik,
    this.correspondentAccount,
    this.checkingAccount,
    this.livingCityId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      fio: json['fio'],
      name: json['name'],
      surname: json['surname'],
      patronymic: json['patronymic'],
      birthDate: json['birth_date'],
      iin: json['iin'],
      docNumber: json['doc_number'],
      phone: json['phone'],
      email: json['email'],
      password: json['password'],
      token: json['token'],
      ref: json['ref'],
      bankName: json['bank_name'],
      bankBik: json['bank_bik'],
      correspondentAccount: json['correspondent_account'],
      checkingAccount: json['checking_account'],
      livingCityId: json['living_city_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fio': fio,
      'name': name,
      'surname': surname,
      'patronymic': patronymic,
      'birth_date': birthDate,
      'iin': iin,
      'doc_number': docNumber,
      'phone': phone,
      'email': email,
      'password': password,
      'token': token,
      'ref': ref,
      'bank_name': bankName,
      'bank_bik': bankBik,
      'correspondent_account': correspondentAccount,
      'checking_account': checkingAccount,
      'living_city_id': livingCityId,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}

class OrderStatus {
  int id;
  int orderId;
  UserDTO user;
  String status;
  String? stopReason;
  String? stopTimer;
  String createdAt;
  String orderStatus;
  dynamic orderTransport;

  OrderStatus({
    required this.id,
    required this.orderId,
    required this.user,
    required this.status,
    this.stopReason,
    this.stopTimer,
    required this.createdAt,
    required this.orderStatus,
    this.orderTransport,
  });

  factory OrderStatus.fromJson(Map<String, dynamic> json) {
    return OrderStatus(
      id: json['id'],
      orderId: json['order_id'],
      user: UserDTO.fromJson(json['user']),
      status: json['status'],
      stopReason: json['stop_reason'],
      stopTimer: json['stop_timer'],
      createdAt: json['created_at'],
      orderStatus: json['order_status'],
      orderTransport: json['order_transport'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order_id': orderId,
      'user': user,
      'status': status,
      'stop_reason': stopReason,
      'stop_timer': stopTimer,
      'created_at': createdAt,
      'order_status': orderStatus,
      'order_transport': orderTransport,
    };
  }
}

class Point {
  int id;
  Employee? employee;
  String? typeLogist;
  String? comment;
  String from;
  String to;
  List<Product> products;
  dynamic pointType;
  dynamic eta;
  dynamic finishDate;
  int weight;
  int volume;
  double? lat;
  double? long;
  String status;
  String createdAt;

  Point({
    required this.id,
    this.employee,
    this.typeLogist,
    this.comment,
    required this.from,
    required this.to,
    required this.products,
    this.pointType,
    this.eta,
    this.finishDate,
    required this.weight,
    required this.volume,
    this.lat,
    this.long,
    required this.status,
    required this.createdAt,
  });

  factory Point.fromJson(Map<String, dynamic> json) {
    return Point(
      id: json['id'],
      employee: json['employee'] != null ? Employee.fromJson(json['employee']) : null,
      typeLogist: json['type_logist'],
      comment: json['comment'],
      from: json['from'],
      to: json['to'],
      products: List<Product>.from(json['products'].map((x) => Product.fromJson(x))),
      pointType: json['point_type'],
      eta: json['eta'],
      finishDate: json['finish_date'],
      weight: json['weight'],
      volume: json['volume'],
      lat: json['lat'],
      long: json['long'],
      status: json['status'],
      createdAt: json['created_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'employee': employee?.toJson(),
      'type_logist': typeLogist,
      'comment': comment,
      'from': from,
      'to': to,
      'products': List<dynamic>.from(products.map((x) => x.toJson())),
      'point_type': pointType,
      'eta': eta,
      'finish_date': finishDate,
      'weight': weight,
      'volume': volume,
      'lat': lat,
      'long': long,
      'status': status,
      'created_at': createdAt,
    };
  }
}

class Product {
  int id;
  int pointId;
  String name;
  int count;
  int weight;
  int volume;
  String status;
  String createdAt;
  String updatedAt;

  Product({
    required this.id,
    required this.pointId,
    required this.name,
    required this.count,
    required this.weight,
    required this.volume,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      pointId: json['point_id'],
      name: json['name'],
      count: json['count'],
      weight: json['weight'],
      volume: json['volume'],
      status: json['status'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'point_id': pointId,
      'name': name,
      'count': count,
      'weight': weight,
      'volume': volume,
      'status': status,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}