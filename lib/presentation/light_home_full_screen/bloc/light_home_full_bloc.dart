import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/autolayout_four_item_model.dart';
import '../models/autolayout_six_item_model.dart';
import '../models/gridhamburone_item_model.dart';
import '../models/light_home_full_initial_model.dart';
import '../models/light_home_full_model.dart';
import '../models/lighthome_tab_model.dart';
part 'light_home_full_event.dart';
part 'light_home_full_state.dart';

/// A bloc that manages the state of a LightHomeFull according to the event that is dispatched to it.
class LightHomeFullBloc extends Bloc<LightHomeFullEvent, LightHomeFullState> {
  LightHomeFullBloc(LightHomeFullState initialState) : super(initialState) {
    on<LightHomeFullInitialEvent>(_onInitialize);
    on<onSelected>(_onSelected);
  }

  _onSelected(
    onSelected event,
    Emitter<LightHomeFullState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<GridhamburoneItemModel> fillGridhamburoneItemList() {
    return [
      GridhamburoneItemModel(hamburone: ImageConstant.img, burger: "Hambur.."),
      GridhamburoneItemModel(
          hamburone: ImageConstant.img58x48, burger: "Pizza"),
      GridhamburoneItemModel(hamburone: ImageConstant.img1, burger: "Noodles"),
      GridhamburoneItemModel(hamburone: ImageConstant.img2, burger: "Meat"),
      GridhamburoneItemModel(hamburone: ImageConstant.img3, burger: "Vegeta.."),
      GridhamburoneItemModel(hamburone: ImageConstant.img4, burger: "Dessert"),
      GridhamburoneItemModel(hamburone: ImageConstant.img5, burger: "Drink"),
      GridhamburoneItemModel(hamburone: ImageConstant.img6, burger: "More")
    ];
  }

  List<AutolayoutFourItemModel> fillAutolayoutFourItemList() {
    return [
      AutolayoutFourItemModel(
          mixedSalad: ImageConstant.imgRectangle,
          loremipsumdol: "Mixed Salad Bonb...",
          distance: "1.5 km",
          tf: "|",
          zero: "4.8",
          zeroOne: "(1.2k)",
          price: "\$6.00",
          one: "|",
          priceOne: "\$2.00"),
      AutolayoutFourItemModel(
          mixedSalad: ImageConstant.imgRectangle192x192,
          loremipsumdol: "Vegetarian Menu",
          distance: "1.7 km",
          tf: "|",
          zero: "4.7",
          zeroOne: "(900)",
          price: "\$5.50",
          one: "|",
          priceOne: "\$2.00")
    ];
  }

  List<AutolayoutSixItemModel> fillAutolayoutSixItemList() {
    return [
      AutolayoutSixItemModel(
          vegetarian: ImageConstant.imgRectangle120x120,
          loremipsumdol: "Vegetarian Noodles",
          distance: "800 m",
          tf: "|",
          zero: "4.9",
          zeroOne: "(2.3k)",
          price: "\$2.00",
          imageOne: ImageConstant.imgIconlyBoldHeart),
      AutolayoutSixItemModel(
          vegetarian: ImageConstant.imgRectangle1,
          loremipsumdol: "Pizza Hut - Lumintu",
          distance: "1.2 km",
          tf: "|",
          zero: "4.5",
          zeroOne: "(1.9k)",
          price: "\$1.50",
          imageOne: ImageConstant.imgIconlyLightOutlineHeart),
      AutolayoutSixItemModel(
          vegetarian: ImageConstant.imgRectangle2,
          loremipsumdol: "Mozarella Cheese Bu...",
          distance: "1.6 km",
          tf: "|",
          zero: "4.6",
          zeroOne: "(1.5k)",
          price: "\$2.50",
          imageOne: ImageConstant.imgIconlyBoldHeart),
      AutolayoutSixItemModel(
          vegetarian: ImageConstant.imgRectangle3,
          loremipsumdol: "Fruit Salad - Kumpa",
          distance: "1.4 km",
          tf: "|",
          zero: "4.7",
          zeroOne: "(1.7k)",
          price: "\$2.00",
          imageOne: ImageConstant.imgIconlyLightOutlineHeart),
      AutolayoutSixItemModel(
          vegetarian: ImageConstant.imgRectangle4,
          loremipsumdol: "Lorem ipsum dol..",
          distance: "00 km",
          tf: "|",
          zero: "00",
          zeroOne: "(000)",
          price: "\$00",
          imageOne: ImageConstant.imgIconlyLightOutlineHeart)
    ];
  }

  _onInitialize(
    LightHomeFullInitialEvent event,
    Emitter<LightHomeFullState> emit,
  ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        lightHomeFullInitialModelObj:
            state.lightHomeFullInitialModelObj?.copyWith(
          gridhamburoneItemList: fillGridhamburoneItemList(),
          autolayoutFourItemList: fillAutolayoutFourItemList(),
        ),
        lighthomeTabModelObj: state.lighthomeTabModelObj?.copyWith(
          autolayoutSixItemList: fillAutolayoutSixItemList(),
        ),
      ),
    );
  }
}
