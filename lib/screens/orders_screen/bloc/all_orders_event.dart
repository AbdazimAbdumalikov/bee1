part of 'all_orders_bloc.dart';

@immutable
abstract class AllOrdersEvent {}

class EventInitialAllOrdersScreen extends AllOrdersEvent {
  final String? cityId;

  EventInitialAllOrdersScreen({
    this.cityId,
  });
}