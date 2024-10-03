import 'package:equatable/equatable.dart';
import 'addresslist_item_model.dart';

/// This class defines the variables used in the [light_checkout_orders_deliver_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LightCheckoutOrdersDeliverModel extends Equatable {
  LightCheckoutOrdersDeliverModel({this.addresslistItemList = const []});

  List<AddresslistItemModel> addresslistItemList;

  LightCheckoutOrdersDeliverModel copyWith(
      {List<AddresslistItemModel>? addresslistItemList}) {
    return LightCheckoutOrdersDeliverModel(
      addresslistItemList: addresslistItemList ?? this.addresslistItemList,
    );
  }

  @override
  List<Object?> get props => [addresslistItemList];
}
