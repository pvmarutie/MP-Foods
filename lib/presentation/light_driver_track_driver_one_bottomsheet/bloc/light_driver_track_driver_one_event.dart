part of 'light_driver_track_driver_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightDriverTrackDriverOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightDriverTrackDriverOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightDriverTrackDriverOne widget is first created.
class LightDriverTrackDriverOneInitialEvent
    extends LightDriverTrackDriverOneEvent {
  @override
  List<Object?> get props => [];
}
