import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [notificationlist_item_widget] screen.

// ignore_for_file: must_be_immutable
class NotificationlistItemModel extends Equatable {
  NotificationlistItemModel(
      {this.autolayoutOne,
      this.orders,
      this.dec2022,
      this.tf,
      this.time,
      this.description,
      this.id}) {
    autolayoutOne = autolayoutOne ?? ImageConstant.imgAutoLayoutHorizontal60x60;
    orders = orders ?? "Orders Cancelled!";
    dec2022 = dec2022 ?? "19 Dec, 2022";
    tf = tf ?? "|";
    time = time ?? "20:50 PM";
    description = description ??
        "You have canceled an order at Burger Hut. We apologize for your inconvenience. We will try to improve our service next time 🥲";
    id = id ?? "";
  }

  String? autolayoutOne;

  String? orders;

  String? dec2022;

  String? tf;

  String? time;

  String? description;

  String? id;

  NotificationlistItemModel copyWith({
    String? autolayoutOne,
    String? orders,
    String? dec2022,
    String? tf,
    String? time,
    String? description,
    String? id,
  }) {
    return NotificationlistItemModel(
      autolayoutOne: autolayoutOne ?? this.autolayoutOne,
      orders: orders ?? this.orders,
      dec2022: dec2022 ?? this.dec2022,
      tf: tf ?? this.tf,
      time: time ?? this.time,
      description: description ?? this.description,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [autolayoutOne, orders, dec2022, tf, time, description, id];
}
