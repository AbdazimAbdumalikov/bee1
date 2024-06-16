part of 'partners_bloc.dart';

@immutable
abstract class PartnersEvent {}

class PartnersEventInitial extends PartnersEvent {}

class PartnersEventGetEmployeeByRef extends PartnersEvent {
  final String ref;

  PartnersEventGetEmployeeByRef(this.ref);
}

class PartnersEventSearchEmployee extends PartnersEvent {
  final String searchText;

  PartnersEventSearchEmployee(this.searchText);
}

class PartnersEventMakeEmployeePartner extends PartnersEvent {
  final int employeeId;

  PartnersEventMakeEmployeePartner(this.employeeId);
}

