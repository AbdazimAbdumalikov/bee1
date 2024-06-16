import 'dart:async';

import 'package:dio/dio.dart';
import 'package:europharm_flutter/network/dio_wrapper/dio_extension.dart';
import 'package:europharm_flutter/network/models/dto_models/response/error.dart';
import 'package:europharm_flutter/network/models/dto_models/response/profile_response.dart';
import 'package:europharm_flutter/network/models/employee_by_ref_dto.dart';
import 'package:europharm_flutter/network/models/make_employee_dto.dart';
import 'package:europharm_flutter/network/models/partner_dto.dart';
import 'package:europharm_flutter/network/models/user_dto.dart';
import 'package:europharm_flutter/network/repository/global_repository.dart';
import 'package:europharm_flutter/network/services/firebase_messaging_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'partners_event.dart';

part 'partners_state.dart';

class PartnersBloc extends Bloc<PartnersEvent, PartnersState> {
  final GlobalRepository repository;
  final FirebaseMessagingRepository firebaseMessagingRepository;

  PartnersBloc({
    required this.repository,
    required this.firebaseMessagingRepository,
  }) : super(PartnersStateLoading()) {
    on<PartnersEventInitial>(_partners);
    on<PartnersEventGetEmployeeByRef>(_getEmployeeByRef);
    on<PartnersEventMakeEmployeePartner>(_makeEmployeePartner);
  }

  Future<void> _partners(
      PartnersEventInitial event,
      Emitter<PartnersState> emit,
      ) async {
    try {
      print('Начало загрузки профиля');
      final UserDTO partners = await repository.getProfile();
      if (partners != null) {
        print('Данные профиля успешно получены: $partners');
        emit(PartnersStateLoaded(partners: partners));
      } else {
        print('Данные профиля равны null');
        emit(PartnersStateError(
          error: AppError(
            message: 'Данные профиля равны null',
            code: null, // или укажите код ошибки по вашему желанию
          ),
        ));
      }
    } catch (e) {
      print('Ошибка при получении профиля: $e');
      emit(
        PartnersStateError(
          error: AppError(
            message: e.toString(), // или замените на нужное сообщение об ошибке
            code: null, // или укажите код ошибки по вашему желанию
          ),
        ),
      );
    }
  }

  Future<void> _getEmployeeByRef(
      PartnersEventGetEmployeeByRef event,
      Emitter<PartnersState> emit,
      ) async {
    try {
      print('Запрос информации о сотруднике по ref: ${event.ref}');
      final MakeEmployeePartnerDTO? employee = await repository.getEmployeeByRef(ref: event.ref);
      print('Информация о сотруднике: ${employee?.id}, ${employee?.name}, ${employee?.surname}');
      emit(PartnersStateSearchResult(employee: employee));
      // Здесь можно добавить событие или обновление состояния с полученными данными о сотруднике
    } catch (e) {
      print('Ошибка при получении информации о сотруднике по ref: $e');
      // Здесь можно добавить событие или обновление состояния с информацией об ошибке
      emit(PartnersStateError(
        error: AppError(
          message: e.toString(), // или замените на нужное сообщение об ошибке
          code: null, // или укажите код ошибки по вашему желанию
        ),
      ));
    }
  }

  Future<void> _makeEmployeePartner(
      PartnersEventMakeEmployeePartner event,
      Emitter<PartnersState> emit,
      ) async {
    try {
      print('Выполнение запроса на создание партнера: ${event.employeeId}');
      final MakeEmployeePartnerDTO employee = await repository.makeEmployeePartner(
        employeeId: event.employeeId,
      );
      print('Партнер успешно создан: ${employee.id}, ${employee.name}, ${employee.surname}');
      emit(PartnersStateEmployeePartnerCreated(employee: employee));
      // Здесь можно добавить событие или обновление состояния с полученными данными о созданном партнере
    } on DioError catch (e) {
      if (e.response?.statusCode == 422) {
        // Обработка ошибки "Уже является вашим партнером"
        print('Ошибка: Уже является вашим партнером');
        emit(PartnersStateError(
          error: AppError(
            message: 'Уже является вашим партнером',
            code: 422,
          ),
        ));
      } else {
        // Обработка других возможных ошибок
        print('Ошибка при выполнении запроса на создание партнера: ${e.response?.statusCode}');
        emit(PartnersStateError(
          error: AppError(
            message: 'Произошла ошибка при выполнении запроса: ${e.response?.statusCode}',
            code: e.response?.statusCode,
          ),
        ));
      }
    } catch (e) {
      print('Ошибка при создании партнера: $e');
      // Здесь можно добавить событие или обновление состояния с информацией об ошибке
      emit(PartnersStateError(
        error: AppError(
          message: e.toString(), // или замените на нужное сообщение об ошибке
          code: null, // или укажите код ошибки по вашему желанию
        ),
      ));
    }
  }
}
