import 'dart:async';
import 'dart:developer';

import 'package:europharm_flutter/network/dio_wrapper/dio_extension.dart';
import 'package:europharm_flutter/network/models/dto_models/response/cities_response.dart';
import 'package:europharm_flutter/network/models/dto_models/response/error.dart';
import 'package:europharm_flutter/network/models/order_dto.dart';
import 'package:europharm_flutter/network/repository/global_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';

part 'orders_event.dart';
part 'parts/_read.dart';
part 'orders_state.dart';

class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc({
    required this.repository,
  }) : super(OrdersStateLoading()) {
    on<EventInitialOrdersScreen>(_read);
    // on<EventLoadOrdersByCities>(_loadOrdersByCities);
  }

  final GlobalRepository repository;
  int? id;

  // Future<void> _loadOrdersByCities(EventLoadOrdersByCities event, Emitter<OrdersState> emit) async {
  //   CitiesResponse citiesResponse = CitiesResponse();
  //   try {
  //     emit(OrdersStateLoading());
  //     final orders = await repository.getOrdersByCities(cityId: event.cityId);
  //     emit(StateLoadDataOrdersScreen(orders: orders, cities: citiesResponse.data ?? [],));
  //   } catch (error) {
  //     emit(StateOrdersScreenError(error: error as AppError));
  //   }
  // }
}
