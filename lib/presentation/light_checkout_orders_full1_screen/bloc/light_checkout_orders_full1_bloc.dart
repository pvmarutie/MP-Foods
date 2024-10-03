import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_checkout_orders_full1_model.dart';
import '../models/listmenunameone1_item_model.dart';
part 'light_checkout_orders_full1_event.dart';
part 'light_checkout_orders_full1_state.dart';

/// A bloc that manages the state of a LightCheckoutOrdersFull1 according to the event that is dispatched to it.
class LightCheckoutOrdersFull1Bloc
    extends Bloc<LightCheckoutOrdersFull1Event, LightCheckoutOrdersFull1State> {
  LightCheckoutOrdersFull1Bloc(LightCheckoutOrdersFull1State initialState)
      : super(initialState) {
    on<LightCheckoutOrdersFull1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightCheckoutOrdersFull1InitialEvent event,
    Emitter<LightCheckoutOrdersFull1State> emit,
  ) async {
    emit(
      state.copyWith(
        lightCheckoutOrdersFull1ModelObj:
            state.lightCheckoutOrdersFull1ModelObj?.copyWith(
          listmenunameone1ItemList: fillListmenunameone1ItemList(),
        ),
      ),
    );
  }

  List<Listmenunameone1ItemModel> fillListmenunameone1ItemList() {
    return [
      Listmenunameone1ItemModel(
          image: ImageConstant.imgRectangle80x80,
          menunameone: "Mixed Vegetable Sal...",
          price: "\$12.00"),
      Listmenunameone1ItemModel(
          image: ImageConstant.imgRectangle23,
          menunameone: "Special Pasta Salad",
          price: "\$8.00"),
      Listmenunameone1ItemModel(
          image: ImageConstant.imgRectangle24,
          menunameone: " Fresh Avocado Juice",
          price: "\$4.00")
    ];
  }
}
