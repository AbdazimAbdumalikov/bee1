part of 'all_orders_bloc.dart';

@immutable
abstract class AllOrdersState {}

class AllOrdersStateLoading extends AllOrdersState {}

class StateLoadDataAllOrdersScreen extends AllOrdersState {
  final List<OrderDTO> orders;
  // final List<CityData> cities;

  StateLoadDataAllOrdersScreen({
    required this.orders,
    // required this.cities,
  });
}

class StateAllOrdersScreenError extends AllOrdersState {
  final AppError error;

  StateAllOrdersScreenError({
    required this.error,
  });
}
