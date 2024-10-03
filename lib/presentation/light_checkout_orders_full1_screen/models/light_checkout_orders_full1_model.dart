import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listmenunameone1_item_model.dart';

/// This class defines the variables used in the [light_checkout_orders_full1_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LightCheckoutOrdersFull1Model extends Equatable {
  LightCheckoutOrdersFull1Model({this.listmenunameone1ItemList = const []});

  List<Listmenunameone1ItemModel> listmenunameone1ItemList;

  LightCheckoutOrdersFull1Model copyWith(
      {List<Listmenunameone1ItemModel>? listmenunameone1ItemList}) {
    return LightCheckoutOrdersFull1Model(
      listmenunameone1ItemList:
          listmenunameone1ItemList ?? this.listmenunameone1ItemList,
    );
  }

  @override
  List<Object?> get props => [listmenunameone1ItemList];
}
