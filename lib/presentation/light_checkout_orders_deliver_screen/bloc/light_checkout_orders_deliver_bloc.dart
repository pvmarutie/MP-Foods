import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/addresslist_item_model.dart';
import '../models/light_checkout_orders_deliver_model.dart';
part 'light_checkout_orders_deliver_event.dart';
part 'light_checkout_orders_deliver_state.dart';

/// A bloc that manages the state of a LightCheckoutOrdersDeliver according to the event that is dispatched to it.
class LightCheckoutOrdersDeliverBloc extends Bloc<
    LightCheckoutOrdersDeliverEvent, LightCheckoutOrdersDeliverState> {
  LightCheckoutOrdersDeliverBloc(LightCheckoutOrdersDeliverState initialState)
      : super(initialState) {
    on<LightCheckoutOrdersDeliverInitialEvent>(_onInitialize);
    on<AddresslistItemEvent>(_addresslistItem);
  }

  _onInitialize(
    LightCheckoutOrdersDeliverInitialEvent event,
    Emitter<LightCheckoutOrdersDeliverState> emit,
  ) async {
    emit(
      state.copyWith(
        lightCheckoutOrdersDeliverModelObj:
            state.lightCheckoutOrdersDeliverModelObj?.copyWith(
          addresslistItemList: fillAddresslistItemList(),
        ),
      ),
    );
  }

  _addresslistItem(
    AddresslistItemEvent event,
    Emitter<LightCheckoutOrdersDeliverState> emit,
  ) {
    List<AddresslistItemModel> newList = List<AddresslistItemModel>.from(
        state.lightCheckoutOrdersDeliverModelObj!.addresslistItemList);
    newList[event.index] = newList[event.index].copyWith(
      radioGroup: event.radioGroup,
    );
    emit(
      state.copyWith(
        lightCheckoutOrdersDeliverModelObj: state
            .lightCheckoutOrdersDeliverModelObj
            ?.copyWith(addresslistItemList: newList),
      ),
    );
  }

  List<AddresslistItemModel> fillAddresslistItemList() {
    return [
      AddresslistItemModel(
          location: "Home", detailsaddress: "Times Square NYC, Manhattan, 27"),
      AddresslistItemModel(detailsaddress: "6993 Meadow Valley Terra, PC 36"),
      AddresslistItemModel(),
      AddresslistItemModel(),
      AddresslistItemModel()
    ];
  }
}
