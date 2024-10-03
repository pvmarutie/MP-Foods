import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/cartlistsection_item_model.dart';
import '../models/light_my_cart_delete_action_model.dart';
part 'light_my_cart_delete_action_event.dart';
part 'light_my_cart_delete_action_state.dart';

/// A bloc that manages the state of a LightMyCartDeleteAction according to the event that is dispatched to it.
class LightMyCartDeleteActionBloc
    extends Bloc<LightMyCartDeleteActionEvent, LightMyCartDeleteActionState> {
  LightMyCartDeleteActionBloc(LightMyCartDeleteActionState initialState)
      : super(initialState) {
    on<LightMyCartDeleteActionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightMyCartDeleteActionInitialEvent event,
    Emitter<LightMyCartDeleteActionState> emit,
  ) async {
    emit(
      state.copyWith(
        lightMyCartDeleteActionModelObj:
            state.lightMyCartDeleteActionModelObj?.copyWith(
          cartlistsectionItemList: fillCartlistsectionItemList(),
        ),
      ),
    );
  }

  List<CartlistsectionItemModel> fillCartlistsectionItemList() {
    return [
      CartlistsectionItemModel(
          image: ImageConstant.imgRectangle5,
          imageOne: ImageConstant.imgRectangle6,
          imageTwo: ImageConstant.imgRectangle7,
          loremipsumdol: "Dessert Cake - Lo...",
          itemsCounter: "4 items",
          tf: "|",
          distance: "2.3 km",
          price: "\$22.00"),
      CartlistsectionItemModel(
          image: ImageConstant.imgRectangle8,
          imageOne: ImageConstant.imgRectangle9,
          imageTwo: ImageConstant.imgRectangle10,
          loremipsumdol: "Japanese Kumpa...",
          itemsCounter: "3 items",
          tf: "|",
          distance: "1.8 km",
          price: "\$25.00"),
      CartlistsectionItemModel(
          image: ImageConstant.imgRectangle11,
          imageOne: ImageConstant.imgRectangle12,
          imageTwo: ImageConstant.imgRectangle13,
          loremipsumdol: "Vegetable Salad",
          itemsCounter: "5 items",
          tf: "|",
          distance: "2.8 km",
          price: "\$20.00"),
      CartlistsectionItemModel(
          image: ImageConstant.imgRectangle14,
          imageOne: ImageConstant.imgRectangle15,
          imageTwo: ImageConstant.imgRectangle16,
          loremipsumdol: "Noodles & Beacon...",
          itemsCounter: "3 items",
          tf: "|",
          distance: "1.5 km",
          price: "\$19.00")
    ];
  }
}
