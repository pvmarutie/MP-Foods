import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_notification_model.dart';
import '../models/notificationlist_item_model.dart';
part 'light_notification_event.dart';
part 'light_notification_state.dart';

/// A bloc that manages the state of a LightNotification according to the event that is dispatched to it.
class LightNotificationBloc
    extends Bloc<LightNotificationEvent, LightNotificationState> {
  LightNotificationBloc(LightNotificationState initialState)
      : super(initialState) {
    on<LightNotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LightNotificationInitialEvent event,
    Emitter<LightNotificationState> emit,
  ) async {
    emit(
      state.copyWith(
        lightNotificationModelObj: state.lightNotificationModelObj?.copyWith(
          notificationlistItemList: fillNotificationlistItemList(),
        ),
      ),
    );
  }

  List<NotificationlistItemModel> fillNotificationlistItemList() {
    return [
      NotificationlistItemModel(
          autolayoutOne: ImageConstant.imgAutoLayoutHorizontal60x60,
          orders: "Orders Cancelled!",
          dec2022: "19 Dec, 2022",
          tf: "|",
          time: "20:50 PM",
          description:
              "You have canceled an order at Burger Hut. We apologize for your inconvenience. We will try to improve our service next time 🥲"),
      NotificationlistItemModel(
          autolayoutOne: ImageConstant.imgAutoLayoutHorizontal1,
          orders: "Orders Successful!",
          dec2022: "19 Dec, 2022",
          tf: "|",
          time: "20:49 PM",
          description:
              "You have placed an order at Burger Hut and paid \$24. Your food will arrive soon. Enjoy our services 😊"),
      NotificationlistItemModel(
          description:
              "You can now make multiple food orders at one time. You can also cancel your orders."),
      NotificationlistItemModel(
          description:
              "Your credit card has been successfully linked with Foodu. Enjoy our services."),
      NotificationlistItemModel(
          description:
              "Your account creation is successful, you can now experience our services.")
    ];
  }
}
