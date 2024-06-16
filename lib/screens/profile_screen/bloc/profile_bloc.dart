import 'dart:async';

import 'package:europharm_flutter/network/dio_wrapper/dio_extension.dart';
import 'package:europharm_flutter/network/models/dto_models/response/error.dart';
import 'package:europharm_flutter/network/models/dto_models/response/profile_response.dart';
import 'package:europharm_flutter/network/models/user_dto.dart';
import 'package:europharm_flutter/network/repository/global_repository.dart';
import 'package:europharm_flutter/network/services/firebase_messaging_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'parts/_read.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GlobalRepository repository;
  final FirebaseMessagingRepository firebaseMessagingRepository;

  ProfileBloc({
    required this.repository,
    required this.firebaseMessagingRepository,
  }) : super(ProfileStateLoading()) {
    on<ProfileEventInitial>(_profile);
  }

  Future<void> _profile(
      ProfileEventInitial event,
      Emitter<ProfileState> emit,
      ) async {
    try {
      print('Начало загрузки профиля');
      final UserDTO? profile = await repository.getProfile();
      if (profile != null) {
        print('Данные профиля успешно получены: $profile');
        emit(ProfileStateLoaded(profile: profile));
      } else {
        print('Данные профиля равны null');
        emit(ProfileStateError(
          error: AppError(
            message: 'Данные профиля равны null',
            code: null, // или укажите код ошибки по вашему желанию
          ),
        ));
      }
    } catch (e) {
      print('Ошибка при получении профиля: $e');
      emit(
        ProfileStateError(
          error: AppError(
            message: e.toString(), // или замените на нужное сообщение об ошибке
            code: null, // или укажите код ошибки по вашему желанию
          ),
        ),
      );
    }
  }
}
