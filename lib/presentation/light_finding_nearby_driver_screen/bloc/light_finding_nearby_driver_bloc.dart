import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_finding_nearby_driver_model.dart';
part 'light_finding_nearby_driver_event.dart';
part 'light_finding_nearby_driver_state.dart';

/// A bloc that manages the state of a LightFindingNearbyDriver according to the event that is dispatched to it.
class LightFindingNearbyDriverBloc
    extends Bloc<LightFindingNearbyDriverEvent, LightFindingNearbyDriverState> {
  LightFindingNearbyDriverBloc(LightFindingNearbyDriverState initialState)
      : super(initialState) {
    on<LightFindingNearbyDriverInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightFindingNearbyDriverInitialEvent event,
    Emitter<LightFindingNearbyDriverState> emit,
  ) async {}
}
