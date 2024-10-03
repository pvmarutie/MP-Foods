import 'package:equatable/equatable.dart';
import 'orderslist_item_model.dart';

/// This class is used in the [lightordersca_tab_page] screen.

// ignore_for_file: must_be_immutable
class LightorderscaTabModel extends Equatable {
  LightorderscaTabModel({this.orderslistItemList = const []});

  List<OrderslistItemModel> orderslistItemList;

  LightorderscaTabModel copyWith(
      {List<OrderslistItemModel>? orderslistItemList}) {
    return LightorderscaTabModel(
      orderslistItemList: orderslistItemList ?? this.orderslistItemList,
    );
  }

  @override
  List<Object?> get props => [orderslistItemList];
}
