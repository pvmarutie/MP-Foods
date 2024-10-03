part of 'light_driver_track_driver_one_bloc.dart';

/// Represents the state of LightDriverTrackDriverOne in the application.

// ignore_for_file: must_be_immutable
class LightDriverTrackDriverOneState extends Equatable {
  LightDriverTrackDriverOneState({this.lightDriverTrackDriverOneModelObj});

  LightDriverTrackDriverOneModel? lightDriverTrackDriverOneModelObj;

  @override
  List<Object?> get props => [lightDriverTrackDriverOneModelObj];
  LightDriverTrackDriverOneState copyWith(
      {LightDriverTrackDriverOneModel? lightDriverTrackDriverOneModelObj}) {
    return LightDriverTrackDriverOneState(
      lightDriverTrackDriverOneModelObj: lightDriverTrackDriverOneModelObj ??
          this.lightDriverTrackDriverOneModelObj,
    );
  }
}
