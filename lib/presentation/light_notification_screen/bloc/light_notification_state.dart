part of 'light_notification_bloc.dart';

/// Represents the state of LightNotification in the application.

// ignore_for_file: must_be_immutable
class LightNotificationState extends Equatable {
  LightNotificationState({this.lightNotificationModelObj});

  LightNotificationModel? lightNotificationModelObj;

  @override
  List<Object?> get props => [lightNotificationModelObj];
  LightNotificationState copyWith(
      {LightNotificationModel? lightNotificationModelObj}) {
    return LightNotificationState(
      lightNotificationModelObj:
          lightNotificationModelObj ?? this.lightNotificationModelObj,
    );
  }
}
