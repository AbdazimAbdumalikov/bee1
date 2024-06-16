import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:europharm_flutter/network/models/dto_models/response/cities_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/error.dart';
import 'package:europharm_flutter/network/models/order_dto.dart';
import 'package:europharm_flutter/network/repository/global_repository.dart';
import 'package:meta/meta.dart';

part 'all_orders_event.dart';
part 'all_orders_state.dart';

class AllOrdersBloc extends Bloc<AllOrdersEvent, AllOrdersState> {
  AllOrdersBloc({
    required this.repository,
  }) : super(AllOrdersStateLoading()) {
    on<EventInitialAllOrdersScreen>(_loadAllOrders);
  }

  final GlobalRepository repository;
  int? id;

  Future<void> _loadAllOrders(EventInitialAllOrdersScreen event, Emitter<AllOrdersState> emit) async {
    CitiesResponse citiesResponse = CitiesResponse();
    try {
      emit(AllOrdersStateLoading());
      final orders = await repository.getOrdersByCities();
      print("CITYID: ${event.cityId}");
      emit(StateLoadDataAllOrdersScreen(orders: orders));
      print("Загружено orders $orders");
    } catch (error) {
      emit(StateAllOrdersScreenError(error: AppError(message: "")));
    }
  }
}