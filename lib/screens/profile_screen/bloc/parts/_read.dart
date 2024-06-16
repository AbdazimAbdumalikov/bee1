part of '../profile_bloc.dart';

extension Read on ProfileBloc {
  Future<void> _read(
      ProfileEventInitial event,
      Emitter<ProfileState> emit,
      ) async {
    try {
      final UserDTO profile = await repository.getProfile();
      print('prosto zaebal)');
      print('Получены данные о пользователе: $profile');
      print('Имя пользователя: ${profile.id}');
      emit(ProfileStateLoaded(profile: profile));
    } catch (e) {
      emit(
        ProfileStateError(
          error: AppError(
            message: e.dioErrorMessage,
            code: e.dioErrorStatusCode,
          ),
        ),
      );
    }
  }
}
