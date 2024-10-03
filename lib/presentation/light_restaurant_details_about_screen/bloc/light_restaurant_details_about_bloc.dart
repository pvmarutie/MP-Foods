import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_restaurant_details_about_model.dart';
part 'light_restaurant_details_about_event.dart';
part 'light_restaurant_details_about_state.dart';

/// A bloc that manages the state of a LightRestaurantDetailsAbout according to the event that is dispatched to it.
class LightRestaurantDetailsAboutBloc extends Bloc<
    LightRestaurantDetailsAboutEvent, LightRestaurantDetailsAboutState> {
  LightRestaurantDetailsAboutBloc(LightRestaurantDetailsAboutState initialState)
      : super(initialState) {
    on<LightRestaurantDetailsAboutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightRestaurantDetailsAboutInitialEvent event,
    Emitter<LightRestaurantDetailsAboutState> emit,
  ) async {}
}
