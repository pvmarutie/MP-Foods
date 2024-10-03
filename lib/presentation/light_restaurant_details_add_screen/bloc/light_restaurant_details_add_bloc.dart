import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_restaurant_details_add_model.dart';
part 'light_restaurant_details_add_event.dart';
part 'light_restaurant_details_add_state.dart';

/// A bloc that manages the state of a LightRestaurantDetailsAdd according to the event that is dispatched to it.
class LightRestaurantDetailsAddBloc extends Bloc<LightRestaurantDetailsAddEvent,
    LightRestaurantDetailsAddState> {
  LightRestaurantDetailsAddBloc(LightRestaurantDetailsAddState initialState)
      : super(initialState) {
    on<LightRestaurantDetailsAddInitialEvent>(_onInitialize);
    on<DecrementQuantity1Event>(_decrementQuantity1);
    on<IncrementQuantity1Event>(_incrementQuantity1);
  }

  _decrementQuantity1(
    DecrementQuantity1Event event,
    Emitter<LightRestaurantDetailsAddState> emit,
  ) {
    emit(
      state.copyWith(
        quantity: state.quantity > 1 ? state.quantity - event.quantity : 1,
      ),
    );
  }

  _incrementQuantity1(
    IncrementQuantity1Event event,
    Emitter<LightRestaurantDetailsAddState> emit,
  ) {
    emit(
      state.copyWith(
        quantity: state.quantity + event.quantity,
      ),
    );
  }

  _onInitialize(
    LightRestaurantDetailsAddInitialEvent event,
    Emitter<LightRestaurantDetailsAddState> emit,
  ) async {
    emit(
      state.copyWith(
        statusdefaultController: TextEditingController(),
        quantity: 1,
      ),
    );
  }
}
