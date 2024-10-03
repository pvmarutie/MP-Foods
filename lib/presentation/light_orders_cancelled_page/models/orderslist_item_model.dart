import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [orderslist_item_widget] screen.

// ignore_for_file: must_be_immutable
class OrderslistItemModel extends Equatable {
  OrderslistItemModel(
      {this.biteMe,
      this.restaurantname,
      this.itemsCounter,
      this.tf,
      this.distance,
      this.price,
      this.id}) {
    biteMe = biteMe ?? ImageConstant.imgRectangle11;
    restaurantname = restaurantname ?? "Bite Me Sandwiches";
    itemsCounter = itemsCounter ?? "3 items";
    tf = tf ?? "|";
    distance = distance ?? "1.4 km";
    price = price ?? "\$32.00";
    id = id ?? "";
  }

  String? biteMe;

  String? restaurantname;

  String? itemsCounter;

  String? tf;

  String? distance;

  String? price;

  String? id;

  OrderslistItemModel copyWith({
    String? biteMe,
    String? restaurantname,
    String? itemsCounter,
    String? tf,
    String? distance,
    String? price,
    String? id,
  }) {
    return OrderslistItemModel(
      biteMe: biteMe ?? this.biteMe,
      restaurantname: restaurantname ?? this.restaurantname,
      itemsCounter: itemsCounter ?? this.itemsCounter,
      tf: tf ?? this.tf,
      distance: distance ?? this.distance,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [biteMe, restaurantname, itemsCounter, tf, distance, price, id];
}
