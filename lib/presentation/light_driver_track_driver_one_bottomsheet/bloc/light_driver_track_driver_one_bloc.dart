import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_driver_track_driver_one_model.dart';
part 'light_driver_track_driver_one_event.dart';
part 'light_driver_track_driver_one_state.dart';

/// A bloc that manages the state of a LightDriverTrackDriverOne according to the event that is dispatched to it.
class LightDriverTrackDriverOneBloc extends Bloc<LightDriverTrackDriverOneEvent,
    LightDriverTrackDriverOneState> {
  LightDriverTrackDriverOneBloc(LightDriverTrackDriverOneState initialState)
      : super(initialState) {
    on<LightDriverTrackDriverOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightDriverTrackDriverOneInitialEvent event,
    Emitter<LightDriverTrackDriverOneState> emit,
  ) async {}
}
