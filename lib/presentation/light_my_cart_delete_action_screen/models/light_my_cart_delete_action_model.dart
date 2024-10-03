import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'cartlistsection_item_model.dart';

/// This class defines the variables used in the [light_my_cart_delete_action_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LightMyCartDeleteActionModel extends Equatable {
  LightMyCartDeleteActionModel({this.cartlistsectionItemList = const []});

  List<CartlistsectionItemModel> cartlistsectionItemList;

  LightMyCartDeleteActionModel copyWith(
      {List<CartlistsectionItemModel>? cartlistsectionItemList}) {
    return LightMyCartDeleteActionModel(
      cartlistsectionItemList:
          cartlistsectionItemList ?? this.cartlistsectionItemList,
    );
  }

  @override
  List<Object?> get props => [cartlistsectionItemList];
}
