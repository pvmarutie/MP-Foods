import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_restaurant_details_full_model.dart';
import '../models/promolist_item_model.dart';
import '../models/speciallist_item_model.dart';
part 'light_restaurant_details_full_event.dart';
part 'light_restaurant_details_full_state.dart';

/// A bloc that manages the state of a LightRestaurantDetailsFull according to the event that is dispatched to it.
class LightRestaurantDetailsFullBloc extends Bloc<
    LightRestaurantDetailsFullEvent, LightRestaurantDetailsFullState> {
  LightRestaurantDetailsFullBloc(LightRestaurantDetailsFullState initialState)
      : super(initialState) {
    on<LightRestaurantDetailsFullInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightRestaurantDetailsFullInitialEvent event,
    Emitter<LightRestaurantDetailsFullState> emit,
  ) async {
    emit(
      state.copyWith(
        lightRestaurantDetailsFullModelObj:
            state.lightRestaurantDetailsFullModelObj?.copyWith(
          speciallistItemList: fillSpeciallistItemList(),
          promolistItemList: fillPromolistItemList(),
        ),
      ),
    );
  }

  List<SpeciallistItemModel> fillSpeciallistItemList() {
    return [
      SpeciallistItemModel(
          specialBound: ImageConstant.imgRectangle100x100,
          loremipsum: "Special Bound Salad",
          price: "\$10.50"),
      SpeciallistItemModel(specialBound: ImageConstant.imgRectangle18),
      SpeciallistItemModel(specialBound: ImageConstant.imgRectangle19)
    ];
  }

  List<PromolistItemModel> fillPromolistItemList() {
    return [
      PromolistItemModel(
          image: ImageConstant.imgRectangle20,
          xloremipsum: "1x Fresh Avocado Juice",
          price: "\$4.00"),
      PromolistItemModel(image: ImageConstant.imgRectangle21),
      PromolistItemModel(image: ImageConstant.imgRectangle22)
    ];
  }
}
