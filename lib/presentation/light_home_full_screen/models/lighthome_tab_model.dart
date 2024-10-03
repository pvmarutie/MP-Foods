import 'package:equatable/equatable.dart';
import 'autolayout_six_item_model.dart';

/// This class is used in the [lighthome_tab_page] screen.

// ignore_for_file: must_be_immutable
class LighthomeTabModel extends Equatable {
  LighthomeTabModel({this.autolayoutSixItemList = const []});

  List<AutolayoutSixItemModel> autolayoutSixItemList;

  LighthomeTabModel copyWith(
      {List<AutolayoutSixItemModel>? autolayoutSixItemList}) {
    return LighthomeTabModel(
      autolayoutSixItemList:
          autolayoutSixItemList ?? this.autolayoutSixItemList,
    );
  }

  @override
  List<Object?> get props => [autolayoutSixItemList];
}
