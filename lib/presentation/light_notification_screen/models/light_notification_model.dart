import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'notificationlist_item_model.dart';

/// This class defines the variables used in the [light_notification_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LightNotificationModel extends Equatable {
  LightNotificationModel({this.notificationlistItemList = const []});

  List<NotificationlistItemModel> notificationlistItemList;

  LightNotificationModel copyWith(
      {List<NotificationlistItemModel>? notificationlistItemList}) {
    return LightNotificationModel(
      notificationlistItemList:
          notificationlistItemList ?? this.notificationlistItemList,
    );
  }

  @override
  List<Object?> get props => [notificationlistItemList];
}
