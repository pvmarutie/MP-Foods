part of 'light_notification_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightNotification widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightNotificationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightNotification widget is first created.
class LightNotificationInitialEvent extends LightNotificationEvent {
  @override
  List<Object?> get props => [];
}
