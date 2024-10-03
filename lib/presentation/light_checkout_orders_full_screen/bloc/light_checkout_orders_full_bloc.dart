import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_checkout_orders_full_model.dart';
import '../models/listmenunameone_item_model.dart';
part 'light_checkout_orders_full_event.dart';
part 'light_checkout_orders_full_state.dart';

/// A bloc that manages the state of a LightCheckoutOrdersFull according to the event that is dispatched to it.
class LightCheckoutOrdersFullBloc
    extends Bloc<LightCheckoutOrdersFullEvent, LightCheckoutOrdersFullState> {
  LightCheckoutOrdersFullBloc(LightCheckoutOrdersFullState initialState)
      : super(initialState) {
    on<LightCheckoutOrdersFullInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightCheckoutOrdersFullInitialEvent event,
    Emitter<LightCheckoutOrdersFullState> emit,
  ) async {
    emit(
      state.copyWith(
        lightCheckoutOrdersFullModelObj:
            state.lightCheckoutOrdersFullModelObj?.copyWith(
          listmenunameoneItemList: fillListmenunameoneItemList(),
        ),
      ),
    );
  }

  List<ListmenunameoneItemModel> fillListmenunameoneItemList() {
    return [
      ListmenunameoneItemModel(
          image: ImageConstant.imgRectangle80x80,
          menunameone: "Mixed Vegetable Sal...",
          price: "\$12.00"),
      ListmenunameoneItemModel(
          image: ImageConstant.imgRectangle23,
          menunameone: "Special Pasta Salad",
          price: "\$8.00"),
      ListmenunameoneItemModel(
          image: ImageConstant.imgRectangle24,
          menunameone: " Fresh Avocado Juice",
          price: "\$4.00")
    ];
  }
}
