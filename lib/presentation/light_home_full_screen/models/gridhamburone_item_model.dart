import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [gridhamburone_item_widget] screen.

// ignore_for_file: must_be_immutable
class GridhamburoneItemModel extends Equatable {
  GridhamburoneItemModel({this.hamburone, this.burger, this.id}) {
    hamburone = hamburone ?? ImageConstant.img;
    burger = burger ?? "Hambur..";
    id = id ?? "";
  }

  String? hamburone;

  String? burger;

  String? id;

  GridhamburoneItemModel copyWith({
    String? hamburone,
    String? burger,
    String? id,
  }) {
    return GridhamburoneItemModel(
      hamburone: hamburone ?? this.hamburone,
      burger: burger ?? this.burger,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [hamburone, burger, id];
}
