import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_orders_cancelled_model.dart';
import '../models/lightordersca_tab_model.dart';
import '../models/orderslist_item_model.dart';
part 'light_orders_cancelled_event.dart';
part 'light_orders_cancelled_state.dart';

/// A bloc that manages the state of a LightOrdersCancelled according to the event that is dispatched to it.
class LightOrdersCancelledBloc
    extends Bloc<LightOrdersCancelledEvent, LightOrdersCancelledState> {
  LightOrdersCancelledBloc(LightOrdersCancelledState initialState)
      : super(initialState) {
    on<LightOrdersCancelledInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightOrdersCancelledInitialEvent event,
    Emitter<LightOrdersCancelledState> emit,
  ) async {
    emit(
      state.copyWith(
        lightorderscaTabModelObj: state.lightorderscaTabModelObj?.copyWith(
          orderslistItemList: fillOrderslistItemList(),
        ),
      ),
    );
  }

  List<OrderslistItemModel> fillOrderslistItemList() {
    return [
      OrderslistItemModel(
          biteMe: ImageConstant.imgRectangle11,
          restaurantname: "Bite Me Sandwiches",
          itemsCounter: "3 items",
          tf: "|",
          distance: "1.4 km",
          price: "\$32.00"),
      OrderslistItemModel(
          biteMe: ImageConstant.imgRectangle25,
          restaurantname: "Life of Salad",
          itemsCounter: "4 items",
          tf: "|",
          distance: "2.5 km",
          price: "\$24.00"),
      OrderslistItemModel(
          biteMe: ImageConstant.imgRectangle26,
          restaurantname: "Toro Toro Nabati",
          itemsCounter: "2 items",
          tf: "|",
          distance: "2.2 km",
          price: "\$28.50"),
      OrderslistItemModel(
          biteMe: ImageConstant.imgRectangle27,
          restaurantname: "Jamaca La Salad",
          itemsCounter: "3 items",
          tf: "|",
          distance: "1.7 km",
          price: "\$22.00")
    ];
  }
}
