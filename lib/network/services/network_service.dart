import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:europharm_flutter/network/dio_wrapper/dio_wrapper.dart';
import 'package:europharm_flutter/network/models/dto_models/response/confirm_code_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/create_code_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/deviation_model.dart';
import 'package:europharm_flutter/network/models/dto_models/response/mgov_sign.dart';
import 'package:europharm_flutter/network/models/dto_models/response/order_accident.dart';
import 'package:europharm_flutter/network/models/dto_models/response/cars_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/cities_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/container_accept.dart';
import 'package:europharm_flutter/network/models/dto_models/response/login_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/marks_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/order_decline.dart';
import 'package:europharm_flutter/network/models/dto_models/response/order_history_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/phone_code_register_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/phone_register_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/positions_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/signed.dart';
import 'package:europharm_flutter/network/models/dto_models/response/wms_document_file.dart';
import 'package:europharm_flutter/network/models/employee_by_ref_dto.dart';
import 'package:europharm_flutter/network/models/make_employee_dto.dart';
import 'package:europharm_flutter/network/models/notification_dto.dart';
import 'package:europharm_flutter/network/models/order_documents.dart';
import 'package:europharm_flutter/network/models/order_documents_sign.dart';
import 'package:europharm_flutter/network/models/order_dto.dart';
import 'package:europharm_flutter/network/models/phone_list.dart';
import 'package:europharm_flutter/network/models/point_dto.dart';
import 'package:europharm_flutter/network/models/repairs.dart';
import 'package:europharm_flutter/network/models/user_dto.dart';
import 'package:europharm_flutter/screens/personal_data_screen/ui/widgets/_vmodel.dart';
import 'package:europharm_flutter/screens/user_confirmation/ui/_vmodel.dart';
import 'package:flutter/foundation.dart';

const _networkService = 'NetworkService';

class NetworkService {
  late final DioWrapper _dioWrapper;
  // final SideDioWrapper _sideDioWrapper = SideDioWrapper();
  static const String constToken = '';

  void init(DioWrapper dioService) {
    _dioWrapper = dioService;
  }

  Future<PhoneRegisterResponse> registerPhone(String phone) async {
    final response = await _dioWrapper.sendRequest(
      formData: FormData.fromMap({
        "phone": phone,
      }),
      path: "register",
      method: NetworkMethod.post,
    );
    return PhoneRegisterResponse.fromJson(response.data);
  }

  Future<PhoneCodeRegisterResponse> registerPhoneCode(
    String phone,
    String code,
  ) async {
    final response = await _dioWrapper.sendRequest(
      formData: FormData.fromMap({
        "phone": phone,
        "code": code,
      }),
      path: "register-password",
      method: NetworkMethod.post,
    );
    return PhoneCodeRegisterResponse.fromJson(response.data);
  }

  Future<PhoneCodeRegisterResponse> registerConfirm(
    String password,
    String registerToken,
    String deviceOs,
    String deviceToken,
  ) async {
    _dioWrapper.tokensRepository.save(registerToken);
    final response = await _dioWrapper.sendRequest(
      formData: FormData.fromMap({
        "password": password,
      }),
      path: "register-confirm",
      method: NetworkMethod.post,
    );
    return PhoneCodeRegisterResponse.fromJson(response.data);
  }

  Future<LoginResponse> login(
    String phone,
    String password,
  ) async {
    print("Номер телефона: $phone");
    String formattedPhone = '+$phone';
    print("$formattedPhone");
    final response = await _dioWrapper.sendRequest(
      formData: FormData.fromMap({
        "phone": formattedPhone,
        "password": password,
        'type': 'mobile',
      }),
      path: "login",
      method: NetworkMethod.post,
    );
    return LoginResponse.fromJson(response.data);
  }

  Future<void> deleteAccount(int userId) async {
    final response = await _dioWrapper.sendRequest(
      formData: FormData.fromMap({'type': 'mobile', 'userId': userId}),
      path: "delete-user",
      method: NetworkMethod.post,
    );

    if (response.statusCode == 200 && response.data['status'] == true) {
      return;
    } else {
      Exception(response.data['message'] ?? 'User data deletion error.');
    }
  }

  Future<void> sendDeviceToken({
    required String deviceToken,
  }) async {
    String? deviceOS;
    if (Platform.isIOS) {
      deviceOS = 'ios';
    } else {
      deviceOS = 'android';
    }
    final response = await _dioWrapper.sendRequest(
      formData: FormData.fromMap({
        "device_token": deviceToken,
        "device_os": deviceOS,
      }),
      path: "device",
      method: NetworkMethod.post,
    );
    print('TVOI EBANYIEEEEEEE TOKENY $deviceToken, $deviceOS');
    log('$response', name: _networkService);
  }

  Future<UserDTO> getProfile() async {
    try {
      final response = await _dioWrapper.sendRequest(
        path: "profile",
        method: NetworkMethod.get,
      );

      log(
        '##### getProfile api:: ${response.statusCode}, ${response.data}',
        name: _networkService,
      );

      final responseData = response.data['data'];
      if (responseData != null) {
        final userDTO = UserDTO.fromJson(responseData as Map<String, dynamic>);
        log('UserDTO: $userDTO');
        log('UserID: ${userDTO.id}');
        log('UserName: ${userDTO.name}');
        // Другие данные для отображения
        return userDTO;
      } else {
        throw Exception('Profile data is null');
      }
    } catch (e) {
      // Логируем ошибку и бросаем исключение
      log('Error while fetching profile: $e', name: _networkService);
      throw Exception('Failed to fetch profile data');
    }
  }

  Future<PositionsResponse> getPositions() async {
    final response = await _dioWrapper.sendRequest(
      path: "positions",
      method: NetworkMethod.get,
    );
    return PositionsResponse.fromJson(response.data);
  }

  Future<CarsResponse> getCars() async {
    final response = await _dioWrapper.sendRequest(
      path: "cars",
      method: NetworkMethod.get,
    );
    return CarsResponse.fromJson(response.data);
  }

  Future<MarksResponse> getMarks() async {
    final response = await _dioWrapper.sendRequest(
      path: "marks",
      method: NetworkMethod.get,
    );
    return MarksResponse.fromJson(response.data);
  }

  Future<CitiesResponse> getCities() async {
    final response = await _dioWrapper.sendRequest(
      path: "cities",
      method: NetworkMethod.get,
    );
    return CitiesResponse.fromJson(response.data);
  }

  Future<List<OrderDTO>> getOrdersByCities() async {
    try {
      final response = await _dioWrapper.sendRequest(
        path: "/orders",
        method: NetworkMethod.post,
      );

      log('Response data: ${response.data}', name: 'NetworkService');

      final List<OrderDTO> orders = await compute<List, List<OrderDTO>>(
            (List list) {
          return list
              .map((e) => OrderDTO.fromJson(e as Map<String, dynamic>))
              .toList();
        },
        (response.data as Map<String, dynamic>)['data'] as List,
      );

      return orders;
    } catch (e, stacktrace) {
      log('Error fetching orders by cities: $e', name: 'NetworkService', error: e, stackTrace: stacktrace);
      return [];
    }
  }

  Future<void> verify(PersonalInfoVModel vModel) async {
    await _dioWrapper.sendRequest(
      path: "verify",
      method: NetworkMethod.post,
      formData: FormData.fromMap(await vModel.toJson()),
    );
  }

  Future<OrderDTO> acceptOrder(int orderId) async {
    final response = await _dioWrapper.sendRequest(
      path: "/order/accept",
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "order_id": orderId,
      }),
    );
    log('#####acceptOrder api::: ${response.toString()}',
        name: _networkService);

    return OrderDTO.fromJson(
      (response.data as Map<String, dynamic>)["data"] as Map<String, dynamic>,
    );
  }

  Future<OrderAccident> orderAccident({
    required int orderId,
    required String message,
    required double lat,
    required double lng,
  }) async {
    final response = await _dioWrapper.sendRequest(
      path: "/order/accident",
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "order_id": orderId,
        "message": message,
        "lat": lat,
        "lng": lng,
      }),
    );
    log('#####OrderAccident api::: ${response.statusCode}',
        name: _networkService);
    return OrderAccident.fromJson(
      (response.data as Map<String, dynamic>)["data"] as Map<String, dynamic>,
    );
  }

  Future<OrderDTO> stopOrder({
    required int orderId,
    required int pointId,
    required String cause,
    UserDTO? emptyDriver,
  }) async {
    final response = await _dioWrapper.sendRequest(
      path: "/order/stop",
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "order_id": orderId,
        "point_id": pointId,
        "stop_reason": cause,
        if (emptyDriver != null) 'user_id': emptyDriver.id,
      }),
    );
    log('#####stopOrder api::: ${response.statusCode}', name: _networkService);
    return OrderDTO.fromJson(
      (response.data as Map<String, dynamic>)["data"] as Map<String, dynamic>,
    );
  }

  Future<OrderDTO> stopOrderAndChangeDriver({
    required int orderId,
    required String cause,
    UserDTO? emptyDriver,
  }) async {
    final response = await _dioWrapper.sendRequest(
      path: "order/change/user",
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "order_id": orderId,
        // "stop_reason": cause,
        if (emptyDriver != null) 'user_id': emptyDriver.id,
      }),
    );
    log('#####stopOrderAndChangeDriver api::: ${response.statusCode}',
        name: _networkService);
    return OrderDTO.fromJson(
      (response.data as Map<String, dynamic>)["data"] as Map<String, dynamic>,
    );
  }

  Future<OrderDTO> resumeOrder(
    int orderId,
  ) async {
    final response = await _dioWrapper.sendRequest(
      path: "order/resume",
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "order_id": orderId,
      }),
    );
    log(
      '#####resumeOrder api::: ${response.statusCode}',
      name: _networkService,
    );

    return OrderDTO.fromJson(
      (response.data as Map<String, dynamic>)["data"] as Map<String, dynamic>,
    );
  }

  Future<List<PointDTO>> orderPoints(int orderId) async {
    try {
      final response = await _dioWrapper.sendRequest(
        path: "/order/points",
        method: NetworkMethod.post,
        formData: FormData.fromMap(
          {
            "order_id": orderId,
          },
        ),
      );

      log(
        '##### orderPoints api:: ${response.statusCode}',
        name: _networkService,
      );

      final List<PointDTO> points = await compute<List, List<PointDTO>>(
        (List list) {
          return list
              .map((e) => PointDTO.fromJson(e as Map<String, dynamic>))
              .toList();
        },
        (response.data as Map<String, dynamic>)['data'] as List,
      );

      // log(points.toString(), name: _networkService);

      return points;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<String> sendContainers(
    List<ContainerDTO> containers,
  ) async {
    try {
      List<Map<String, dynamic>> temp = [];

      for (int i = 0; i < containers.length; i++) {
        if (containers[i].isScanned) {
          temp.add({
            'point_id': containers[i].pointId,
            'code': containers[i].code,
          });
        }
      }

      log('TEMP LENGTH:::: ${temp.length}');
      final response = await _dioWrapper.sendRequest(
        path: "/order/point/containers",
        method: NetworkMethod.post,
        request: {
          'containers': temp,
        },
      );
      log(
        '##### sendContainers api:: ${response.statusCode}',
        name: _networkService,
      );

      return (response.data as Map<String, dynamic>)["message"].toString();
    } catch (e) {
      log('MESSAGE::::: $e');
      throw Exception(e);
    }
  }

  Future<PointDTO> orderPointProducts(int pointId) async {
    final response = await _dioWrapper.sendRequest(
      path: "/order/point/products",
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "point_id": pointId,
      }),
    );
    log(
      '##### orderPointProducts api:: ${response.statusCode}',
      name: _networkService,
    );

    return PointDTO.fromJson(
      (response.data as Map<String, dynamic>)["data"] as Map<String, dynamic>,
    );
  }

  Future<PointDTO> orderProductFinish(int productId, String code) async {
    final response = await _dioWrapper.sendRequest(
      path: "/order/point/product/finish",
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "product_id": productId,
        "code": code,
      }),
    );
    return PointDTO.fromJson(
      (response.data as Map<String, dynamic>)["data"] as Map<String, dynamic>,
    );
  }

  Future<PointDTO> orderPointFinish({
    required int pointId,
  }) async {
    final Response<dynamic> response = await _dioWrapper.sendRequest(
      path: "point-finish",
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "point_id": pointId,
      }),
    );

    return PointDTO.fromJson(
      (response.data as Map<String, dynamic>)["data"] as Map<String, dynamic>,
    );
  }

  Future<List<OrderDTO>> acceptedOrders() async {
    final response = await _dioWrapper.sendRequest(
      path: "/orders/accepted",
      method: NetworkMethod.get,
    );

    log('Response data: ${response.data}', name: _networkService);

    // return OrdersResponse.fromJson(response.data as Map<String, dynamic>);
    log(
      '##### acceptedOrders api:: ${response.statusCode}',
      name: _networkService,
    );

    final List<OrderDTO> orders = await compute<List, List<OrderDTO>>(
      (List list) {
        return list
            .map((e) => OrderDTO.fromJson(e as Map<String, dynamic>))
            .toList();
      },
      (response.data as Map<String, dynamic>)['data'] as List,
    );
    return orders;
  }

  Future<OrderHistoryResponse> orderHistory(
    String startDate,
    String endDate,
  ) async {
    try {
      final Response<dynamic> response = await _dioWrapper.sendRequest(
        path: "order/history",
        method: NetworkMethod.post,
        formData: FormData.fromMap({
          "start_date": startDate,
          "end_date": endDate,
        }),
      );
      return OrderHistoryResponse.fromJson(
          response.data as Map<String, dynamic>);
    } catch (e) {
      log('### orderHistory ::: $e', name: _networkService);
      throw Exception(e);
    }
  }

  Future<void> editProfile(
    PersonalDataVModel vModel,
  ) async {
    final response = await _dioWrapper.sendRequest(
      path: "profile-edit",
      method: NetworkMethod.post,
      formData: FormData.fromMap(await vModel.toJson()),
    );
    log(
      '#####editProfile api::: ${response.toString()}',
      name: _networkService,
    );
  }

  Future<ContainerAcceptTap> acceptContainerOrder(
      int containerId, String code) async {
    final requestData = {
      "container_id": containerId,
      "code": code,
    };

    final response = await _dioWrapper.sendRequest(
      path: "order/container/accept",
      method: NetworkMethod.post,
      request: requestData,
    );

    if (response.statusCode == 200) {
      return ContainerAcceptTap.fromJson(response.data);
    } else {
      if (kDebugMode) {
        print('Response status code: ${response.statusCode}');
      }
      if (kDebugMode) {
        print('Response body: ${response.data}');
      }
      throw Exception('Failed to accept container order');
    }
  }

  Future<ContainerAcceptTap> acceptContainerOrderScan(String code) async {
    final requestData = {
      "code": code,
    };

    final response = await _dioWrapper.sendRequest(
      path: "order/container/accept",
      method: NetworkMethod.post,
      request: requestData,
    );

    if (response.statusCode == 200) {
      return ContainerAcceptTap.fromJson(response.data);
    } else {
      if (kDebugMode) {
        print('Response status code: ${response.statusCode}');
      }
      if (kDebugMode) {
        print('Response body: ${response.data}');
      }
      throw Exception('Failed to accept container order');
    }
  }

  Future<OrderAccident> reportAccident({
    required int orderId,
    required String message,
    required double lat,
    required double lng,
  }) async {
    try {
      final response = await _dioWrapper.sendRequest(
        path: "order/accident",
        method: NetworkMethod.post,
        formData: FormData.fromMap({
          "order_id": orderId,
          "message": message,
          "lat": lat,
          "lng": lng,
        }),
      );

      log(
        '##### reportAccident api:: ${response.statusCode}',
        name: _networkService,
      );

      return OrderAccident.fromJson(response.data);
    } catch (e) {
      log('### reportAccident ::: $e', name: _networkService);
      throw Exception(e);
    }
  }

  Future<Deviation> reportDeviation({
    required int orderId,
    required int pointId,
    // required String message,
    required double lat,
    required double lng,
  }) async {
    try {
      final response = await _dioWrapper.sendRequest(
        path: "order/deviation",
        method: NetworkMethod.post,
        formData: FormData.fromMap({
          "order_id": orderId,
          "point_id": pointId,
          // "message": message,
          "lat": lat,
          "lng": lng,
        }),
      );

      log(
        '##### reportAccident api:: ${response.statusCode}',
        name: _networkService,
      );

      return Deviation.fromJson(response.data);
    } catch (e) {
      log('### reportAccident ::: $e', name: _networkService);
      throw Exception(e);
    }
  }

  Future<PhoneList> getPhoneList({required int pointId}) async {
    try {
      final response = await _dioWrapper.sendRequest(
          path: "phone/list",
          method: NetworkMethod.get,
          queryParameters: {
            "point_id": pointId,
          } // Параметр pointId
          );

      if (response.statusCode == 200) {
        print('${response.statusCode}, ${response.data}');
        final phoneList = PhoneList.fromJson(response.data);
        print('Parsed PhoneList: $phoneList');
        return phoneList;
      } else {
        // Обработка ошибки при получении неправильного статуса
        throw Exception(
            'Ошибка при получении списка телефонов: ${response.statusCode}');
      }
    } catch (e) {
      // Обработка ошибок при отправке запроса или парсинге ответа
      throw Exception('Ошибка при отправке запроса: $e');
    }
  }

  Future<CreateCodeResponse> createCode({required int employeeId}) async {
    try {
      final response = await _dioWrapper.sendRequest(
        path: "create/code",
        method: NetworkMethod.post,
        queryParameters: {
          "employee_id": employeeId,
        },
      );

      if (response != null) {
        if (response.statusCode == 200) {
          final responseData = response.data;
          final int code =
              responseData != null ? responseData["data"]["code"] as int : 0;
          return CreateCodeResponse(
            success: true,
            statusCode: 200,
            message: "Success",
            code: code,
          );
        } else {
          throw Exception('Ошибка при создании кода: ${response.statusCode}');
        }
      } else {
        throw Exception('Ответ на запрос равен null');
      }
    } catch (e) {
      throw Exception('Ошибка при отправке запроса: $e');
    }
  }

  Future<ConfirmCodeResponse> confirmCode({required String code}) async {
    try {
      final response = await _dioWrapper.sendRequest(
        path: "confirm/code",
        method: NetworkMethod.post,
        queryParameters: {
          "code": code,
        },
      );

      if (response != null) {
        if (response.statusCode == 200) {
          final responseData = response.data;
          return ConfirmCodeResponse.fromJson(responseData);
        } else {
          throw Exception(
              'Ошибка при подтверждении кода: ${response.statusCode}');
        }
      } else {
        throw Exception('Ответ на запрос равен null');
      }
    } catch (e) {
      throw Exception('Ошибка при отправке запроса на подтверждение кода: $e');
    }
  }

  // Future<OrderAccident> orderAccident({
  //   // required int orderId,
  //   // required int pointId,
  //   required String message,
  //   // required double lat,
  //   // required double lng,
  // }) async {
  //   try {
  //     final response = await _dioWrapper.sendRequest(
  //       path: "order/accident",
  //       method: NetworkMethod.post,
  //       formData: FormData.fromMap({
  //         // "order_id": orderId,
  //         // "point_id": pointId,
  //         "message": message,
  //         // "lat": lat,
  //         // "lng": lng,
  //       }),
  //     );
  //
  //     log(
  //       '##### reportAccident api:: ${response.statusCode}',
  //       name: _networkService,
  //     );
  //
  //     // You can handle the response as needed here.
  //   } catch (e) {
  //     log('### reportAccident ::: $e', name: _networkService);
  //     throw Exception(e);
  //   }
  // }

  Future<void> logout() async {
    await _dioWrapper.sendRequest(
      path: "logout",
      method: NetworkMethod.post,
    );
  }

  Future<List<NotificationDTO>> getNotifications() async {
    final Response<dynamic> response = await _dioWrapper.sendRequest(
      path: 'notifications',
      method: NetworkMethod.get,
    );

    log(
      '##### getNotifications api:: ${response.statusCode}',
      name: _networkService,
    );

    final List<NotificationDTO> notifications =
        await compute<List, List<NotificationDTO>>(
      (List list) {
        return list
            .map((e) => NotificationDTO.fromJson(e as Map<String, dynamic>))
            .toList();
      },
      (response.data as Map<String, dynamic>)['data'] as List,
    );

    // log(drivers.toString(), name: _networkService);

    return notifications;
  }

  Future<List<UserDTO>> getEmptyDrivers() async {
    final Response<dynamic> response = await _dioWrapper.sendRequest(
      path: 'empty-users',
      method: NetworkMethod.get,
    );
    log(
      '##### getEmptyDrivers api:: ${response.statusCode}',
      name: _networkService,
    );

    final List<UserDTO> drivers = await compute<List, List<UserDTO>>(
      (List list) {
        return list
            .map((e) => UserDTO.fromJson(e as Map<String, dynamic>))
            .toList();
      },
      (response.data as Map<String, dynamic>)['data'] as List,
    );

    // log(drivers.toString(), name: _networkService);

    return drivers;
  }

  Future<List<PointDTO>> getPointsByDate({
    required String fromDate,
    required String toDate,
  }) async {
    final Response<dynamic> response = await _dioWrapper.sendRequest(
        path: 'getPointsByDate',
        method: NetworkMethod.get,
        queryParameters: {
          'from': fromDate,
          'to': toDate,
        });

    log(
      '##### getPointsByDate api:: ${response.statusCode}',
      name: _networkService,
    );

    final List<PointDTO> points = await compute<List, List<PointDTO>>(
      (List list) {
        return list
            .map((e) => PointDTO.fromJson(e as Map<String, dynamic>))
            .toList();
      },
      (response.data as Map<String, dynamic>)['data'] as List,
    );

    // log(points.toString(), name: _networkService);

    return points;
  }

  Future<OrderDTO> getOrderByOrderId({
    required int orderId,
  }) async {
    final Response<dynamic> response = await _dioWrapper.sendRequest(
      path: 'order-by-id/$orderId',
      method: NetworkMethod.get,
      baseUrl: 'https://api.sattiway.kz/api/web/',
    );

    log(
      '##### getOrderByOrderId api:: ${response.statusCode}',
      name: _networkService,
    );

    return OrderDTO.fromJson((response.data as Map<String, dynamic>)['data']
            as Map<String, dynamic>)
        .copyWith(
      transport:
          (response.data as Map<String, dynamic>)['data']['transport'] != null
              ? TransportDTO.fromJson(
                  (response.data as Map<String, dynamic>)['data']['transport']
                      ['transport'] as Map<String, dynamic>,
                )
              : null,
    );
  }

  Future<String> orderFinish({
    required int orderId,
  }) async {
    final Response<dynamic> response = await _dioWrapper.sendRequest(
      path: 'order/finish',
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "order_id": orderId,
      }), // baseUrl: 'http://185.129.50.172/api/web/',
    );

    log(
      '##### orderFinish api:: ${response.statusCode}',
      name: _networkService,
    );

    return (response.data as Map<String, dynamic>)['message'] as String;
  }

  Future<String> orderDecline({
    required int orderId,
  }) async {
    final Response<dynamic> response = await _dioWrapper.sendRequest(
      path: 'order/decline',
      method: NetworkMethod.post,
      formData: FormData.fromMap({
        "order_id": orderId,
      }), // baseUrl: 'http://185.129.50.172/api/web/',
    );

    log(
      '##### orderFinish api:: ${response.statusCode}',
      name: _networkService,
    );

    return (response.data as Map<String, dynamic>)['message'] as String;
  }

  Future<List<OrderDTO>> getOrdersByDate({
    required String startDate,
    required String endDate,
  }) async {
    final Response<dynamic> response = await _dioWrapper.sendRequest(
        path: 'points-by-date',
        method: NetworkMethod.get,
        queryParameters: {
          'from': startDate,
          'to': endDate,
        });

    log(
      '##### getOrdersByDate api:: ${response.statusCode}',
      name: _networkService,
    );

    final List<OrderDTO> orders = await compute<List, List<OrderDTO>>(
      (List list) {
        return list
            .map((e) => OrderDTO.fromJson(e as Map<String, dynamic>))
            .toList();
      },
      (response.data as Map<String, dynamic>)['data'] as List,
    );

    return orders;
  }

  Future<List<OrderDocuments>> getOrderDocuments(
      {required int orderId, required int userId}) async {
    final response = await _dioWrapper.sendRequest(
      path: "docs?user_id=$userId&order_id=$orderId",
      method: NetworkMethod.get,
    );

    // return OrdersResponse.fromJson(response.data as Map<String, dynamic>);
    log(
      '##### getOrderDocuments api:: ${response.statusCode}',
      name: _networkService,
    );

    final List<OrderDocuments> documents = await compute<List, dynamic>(
      (List list) {
        return list
            .map((e) => OrderDocuments.fromJson(e as Map<String, dynamic>))
            .toList();
      },
      (response.data as List<dynamic>),
    );

    return documents;
  }

  Future<List<OrderDocumentSign>> getOrderDocumentSign(
      {required int orderId, required int userId}) async {
    final response = await _dioWrapper.sendRequest(
      path:
          "https://api.sattiway.kz/api/v2/egov/ttnSign/$userId/$orderId/Ttn/mgovSign",
      method: NetworkMethod.get,
    );

    log(
      '##### getOrderDocuments api:: ${response.statusCode}',
      name: _networkService,
    );

    if (response.statusCode == 200) {
      if (response.data is List) {
        final List<OrderDocumentSign> documentSignList = (response.data as List)
            .map((e) => OrderDocumentSign.fromJson(e as Map<String, dynamic>))
            .toList();
        print('Received documents: $documentSignList');
        return documentSignList;
      } else if (response.data is Map<String, dynamic>) {
        // Ваша логика обработки данных в формате Map
        final OrderDocumentSign documentSign =
            OrderDocumentSign.fromJson(response.data as Map<String, dynamic>);
        print(
            'Received documents: $documentSign, NameRu: ${documentSign.documentsToSign?[0].nameRu}');
        return [documentSign];
      } else {
        print('Failed to get order documents. Unexpected data format.');
        throw Exception(
            'Failed to get order documents. Unexpected data format.');
      }
    } else {
      print(
          'Failed to get order documents. Status code: ${response.statusCode}');
      throw Exception(
          'Failed to get order documents. Status code: ${response.statusCode}');
    }
  }

  Future<List<WmsDocument>> getWmsDocuments({required int orderId}) async {
    try {
      final response = await _dioWrapper.sendRequest(
        path: "ttn/get/wms",
        method: NetworkMethod.get,
        queryParameters: {"order_id": orderId},
      );

      log(
        '##### getWmsDocuments api:: ${response.statusCode}, ${response.data}',
        name: _networkService,
      );

      final List<WmsDocument> documents = (response.data as List)
          .map((e) => WmsDocument.fromJson(e as Map<String, dynamic>))
          .toList();

      return documents;
    } catch (e) {
      log('Error occurred while getting WMS documents: $e');
      throw Exception('Failed to get WMS documents: $e');
    }
  }

  Future<List<Repairs>> getRepairs() async {
    final response = await _dioWrapper.sendRequest(
      path: "repairs",
      method: NetworkMethod.get,
    );

    log(
      '##### getRepairs api:: ${response.statusCode}',
      name: _networkService,
    );

    final List<Repairs> repairs = await compute<List, dynamic>(
      (List list) {
        return list
            .map((e) => Repairs.fromJson(e as Map<String, dynamic>))
            .toList();
      },
      (response.data as Map<String, dynamic>)['data'] as List,
    );

    return repairs;
  }

  Future<bool> ttnStatus(int orderId) async {
    try {
      final response = await _dioWrapper.sendRequest(
        path: "https://api.sattiway.kz/api/v2/ttn/status",
        method: NetworkMethod.get,
        queryParameters: {
          "site": "wms",
          "order_id": orderId,
          // "user_id": userId,
        },
      );

      log(
        '##### TTNStatus api:: ${response.statusCode}, ${response.data}',
        name: _networkService,
      );

      final Map<String, dynamic> responseData =
          response.data as Map<String, dynamic>;

      if (responseData.containsKey("signed")) {
        // Преобразование JSON в объект Dart типа Signed
        Signed signed = Signed.fromJson(responseData);
        print('Сработал модельный файл');
        return signed.signed;
      } else {
        // Обработка случая, когда ответ не содержит ключ "signed"
        return false;
      }
    } catch (e) {
      // Обработка ошибок при отправке запроса
      log('Error occurred while checking TTN status: $e');
      return false;
    }
  }

  Future<List<MakeEmployeePartnerDTO>> getEmployeeByRef({required String ref}) async {
    try {
      final Response<dynamic> response = await _dioWrapper.sendRequest(
        path: 'employee_by_ref',
        method: NetworkMethod.get,
        queryParameters: {
          'ref': ref,
        },
      );

      if (response.statusCode == 200) {
        // Если запрос успешен, преобразуйте список объектов JSON в список MakeEmployeePartnerDTO
        final List<dynamic> data = response.data;
        final List<MakeEmployeePartnerDTO> employees = data.map((e) => MakeEmployeePartnerDTO.fromJson(e)).toList();
        return employees;
      } else if (response.statusCode == 404) {
        // Если код статуса 404, обрабатываем ошибку "Не найдено"
        throw Exception("Сотрудник с данным ref не найден");
      } else {
        // Обработка других возможных ошибок
        throw Exception("Произошла ошибка при выполнении запроса: ${response.statusCode}");
      }
    } catch (e) {
      // Обработка ошибок
      throw Exception("Произошла ошибка: $e");
    }
  }

  Future<MakeEmployeePartnerDTO> makeEmployeePartner({
    required int employeeId,
  }) async {
    try {
      final Response<dynamic> response = await _dioWrapper.sendRequest(
        path: 'make_employee_partner',
        method: NetworkMethod.post,
        formData: FormData.fromMap({
          "employee_id": employeeId,
        }),
      );

      if (response.statusCode == 200) {
        // Если запрос успешен, возвращаем результат
        return MakeEmployeePartnerDTO.fromJson(response.data as Map<String, dynamic>);
      } else if (response.statusCode == 422) {
        // Если код статуса 422, обрабатываем ошибку "Уже является вашим партнером"
        throw Exception("Уже является вашим партнером");
      } else {
        // Обработка других возможных ошибок
        throw Exception("Произошла ошибка при выполнении запроса: ${response.statusCode}");
      }
    } catch (e) {
      // Обработка ошибок
      throw Exception("Произошла ошибка: $e");
    }
  }
}
