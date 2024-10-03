import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'specialofferslist_item_model.dart';

/// This class defines the variables used in the [light_special_offers_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LightSpecialOffersModel extends Equatable {
  LightSpecialOffersModel({this.specialofferslistItemList = const []});

  List<SpecialofferslistItemModel> specialofferslistItemList;

  LightSpecialOffersModel copyWith(
      {List<SpecialofferslistItemModel>? specialofferslistItemList}) {
    return LightSpecialOffersModel(
      specialofferslistItemList:
          specialofferslistItemList ?? this.specialofferslistItemList,
    );
  }

  @override
  List<Object?> get props => [specialofferslistItemList];
}
