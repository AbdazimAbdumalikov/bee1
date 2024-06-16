part of '../orders_bloc.dart';

extension Read on OrdersBloc {
  Future<void> _read(
      EventInitialOrdersScreen event,
      Emitter<OrdersState> emit,
      ) async {
    CitiesResponse citiesResponse = CitiesResponse();
    List<OrderDTO> ordersResponse = [];
    List<OrderDTO> currentOrders = [];
    List<OrderDTO> overallOrders = [];
    try {
      emit(OrdersStateLoading());
      log('Fetching cities...');
      citiesResponse = await repository.getCities();
      log('Cities fetched: ${citiesResponse.data?.length ?? 0}');

      try {
        log('Fetching orders by cities...');
        ordersResponse = await repository.getOrdersByCities(); // (cityId: event.cityId);
        log('Orders by cities fetched: ${ordersResponse.length}');
      } catch (e) {
        log('Error fetching orders by cities: $e');
      }

      try {
        log('Fetching current orders by cities...');
        currentOrders = await repository.acceptedOrders();
        log('Current orders fetched: ${currentOrders.length}');
      } catch (e) {
        log('Error fetching current orders by cities: $e');
      }

      for (int i = 0; i < currentOrders.length; i++) {
        try {
          currentOrders[i] = currentOrders[i].copyWith(isCurrent: true);
          overallOrders.add(currentOrders[i]);
        } catch (e) {
          log('Error processing current order ${currentOrders[i].id}: $e');
        }
      }

      overallOrders.addAll(ordersResponse);

      log('Overall orders: ${overallOrders.length}');

      emit(
        StateLoadDataOrdersScreen(
          orders: overallOrders,
          cities: citiesResponse.data ?? [],
        ),
      );
    } catch (e) {
      log('Error in _read method: $e');
      emit(
        StateOrdersScreenError(
          error: AppError(
            message: e.dioErrorMessage,
            code: e.dioErrorStatusCode,
          ),
        ),
      );
    }
  }
}
// extension Read on OrdersBloc {
//   Future<void> _read(
//       EventInitialOrdersScreen event,
//       Emitter<OrdersState> emit,
//       ) async {
//     try {
//       emit(OrdersStateLoading());
//
//       // Fetch cities and orders data
//       CitiesResponse citiesResponse = await repository.getCities();
//       List<OrderDTO> ordersResponse = await repository.getOrdersByCities();
//
//       // Fetch current orders
//       List<OrderDTO> currentOrders = await repository.acceptedOrders();
//       List<OrderDTO> overallOrders = [...currentOrders]; // Use spread operator to copy the list
//
//       // Merge overall orders
//       overallOrders.addAll(ordersResponse);
//
//       emit(
//         StateLoadDataOrdersScreen(
//           orders: overallOrders,
//           cities: citiesResponse.data ?? [],
//         ),
//       );
//     } catch (e) {
//       emit(
//         StateOrdersScreenError(
//           error: AppError(
//             message: e.dioErrorMessage,
//             code: e.dioErrorStatusCode,
//           ),
//         ),
//       );
//     }
//   }
// }
