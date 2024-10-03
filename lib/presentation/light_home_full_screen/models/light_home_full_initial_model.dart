import 'package:equatable/equatable.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'autolayout_four_item_model.dart';
import 'gridhamburone_item_model.dart';

/// This class is used in the [light_home_full_initial_page] screen.

// ignore_for_file: must_be_immutable
class LightHomeFullInitialModel extends Equatable {
  LightHomeFullInitialModel(
      {this.dropdownItemList = const [],
      this.gridhamburoneItemList = const [],
      this.autolayoutFourItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<GridhamburoneItemModel> gridhamburoneItemList;

  List<AutolayoutFourItemModel> autolayoutFourItemList;

  LightHomeFullInitialModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<GridhamburoneItemModel>? gridhamburoneItemList,
    List<AutolayoutFourItemModel>? autolayoutFourItemList,
  }) {
    return LightHomeFullInitialModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      gridhamburoneItemList:
          gridhamburoneItemList ?? this.gridhamburoneItemList,
      autolayoutFourItemList:
          autolayoutFourItemList ?? this.autolayoutFourItemList,
    );
  }

  @override
  List<Object?> get props =>
      [dropdownItemList, gridhamburoneItemList, autolayoutFourItemList];
}
