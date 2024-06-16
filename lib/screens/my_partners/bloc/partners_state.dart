part of 'partners_bloc.dart';

@immutable
abstract class PartnersState {}

class PartnersStateLoading extends PartnersState {}

class PartnersStateError extends PartnersState {
  final AppError error;

  PartnersStateError({
    required this.error,
  });
}

class PartnersStateLoaded extends PartnersState {
  final UserDTO partners;

  PartnersStateLoaded({
    required this.partners,
  });
}

class PartnersStateSearchResult extends PartnersState {
  final MakeEmployeePartnerDTO? employee;

  PartnersStateSearchResult({this.employee});
}

class PartnersStateEmployeePartnerCreated extends PartnersState {
  final MakeEmployeePartnerDTO employee;

  PartnersStateEmployeePartnerCreated({required this.employee});
}

