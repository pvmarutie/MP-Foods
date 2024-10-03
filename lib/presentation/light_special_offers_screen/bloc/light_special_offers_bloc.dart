import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_special_offers_model.dart';
import '../models/specialofferslist_item_model.dart';
part 'light_special_offers_event.dart';
part 'light_special_offers_state.dart';

/// A bloc that manages the state of a LightSpecialOffers according to the event that is dispatched to it.
class LightSpecialOffersBloc
    extends Bloc<LightSpecialOffersEvent, LightSpecialOffersState> {
  LightSpecialOffersBloc(LightSpecialOffersState initialState)
      : super(initialState) {
    on<LightSpecialOffersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightSpecialOffersInitialEvent event,
    Emitter<LightSpecialOffersState> emit,
  ) async {
    emit(
      state.copyWith(
        lightSpecialOffersModelObj: state.lightSpecialOffersModelObj?.copyWith(
          specialofferslistItemList: fillSpecialofferslistItemList(),
        ),
      ),
    );
  }

  List<SpecialofferslistItemModel> fillSpecialofferslistItemList() {
    return [
      SpecialofferslistItemModel(
          thirty: "30%",
          discountonly: "discount only valid for today!",
          image: ImageConstant.imgImage),
      SpecialofferslistItemModel(
          thirty: "15%",
          discountonly: "discount only valid for today!",
          image: ImageConstant.imgImage170x188),
      SpecialofferslistItemModel(
          thirty: "20%",
          discountonly: "discount only valid for today!",
          image: ImageConstant.imgImage164x188),
      SpecialofferslistItemModel(
          thirty: "25%",
          discountonly: "discount only valid for today!",
          image: ImageConstant.imgImage1)
    ];
  }
}
