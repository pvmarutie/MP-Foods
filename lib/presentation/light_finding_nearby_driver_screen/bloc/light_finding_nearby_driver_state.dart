part of 'light_finding_nearby_driver_bloc.dart';

/// Represents the state of LightFindingNearbyDriver in the application.

// ignore_for_file: must_be_immutable
class LightFindingNearbyDriverState extends Equatable {
  LightFindingNearbyDriverState({this.lightFindingNearbyDriverModelObj});

  LightFindingNearbyDriverModel? lightFindingNearbyDriverModelObj;

  @override
  List<Object?> get props => [lightFindingNearbyDriverModelObj];
  LightFindingNearbyDriverState copyWith(
      {LightFindingNearbyDriverModel? lightFindingNearbyDriverModelObj}) {
    return LightFindingNearbyDriverState(
      lightFindingNearbyDriverModelObj: lightFindingNearbyDriverModelObj ??
          this.lightFindingNearbyDriverModelObj,
    );
  }
}
