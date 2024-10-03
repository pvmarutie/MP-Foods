import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'promolist_item_model.dart';
import 'speciallist_item_model.dart';

/// This class defines the variables used in the [light_restaurant_details_full_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LightRestaurantDetailsFullModel extends Equatable {
  LightRestaurantDetailsFullModel(
      {this.speciallistItemList = const [], this.promolistItemList = const []});

  List<SpeciallistItemModel> speciallistItemList;

  List<PromolistItemModel> promolistItemList;

  LightRestaurantDetailsFullModel copyWith({
    List<SpeciallistItemModel>? speciallistItemList,
    List<PromolistItemModel>? promolistItemList,
  }) {
    return LightRestaurantDetailsFullModel(
      speciallistItemList: speciallistItemList ?? this.speciallistItemList,
      promolistItemList: promolistItemList ?? this.promolistItemList,
    );
  }

  @override
  List<Object?> get props => [speciallistItemList, promolistItemList];
}
