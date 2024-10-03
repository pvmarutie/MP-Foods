import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [autolayout_six_item_widget] screen.

// ignore_for_file: must_be_immutable
class AutolayoutSixItemModel extends Equatable {
  AutolayoutSixItemModel(
      {this.vegetarian,
      this.loremipsumdol,
      this.distance,
      this.tf,
      this.zero,
      this.zeroOne,
      this.price,
      this.imageOne,
      this.id}) {
    vegetarian = vegetarian ?? ImageConstant.imgRectangle120x120;
    loremipsumdol = loremipsumdol ?? "Vegetarian Noodles";
    distance = distance ?? "800 m";
    tf = tf ?? "|";
    zero = zero ?? "4.9";
    zeroOne = zeroOne ?? "(2.3k)";
    price = price ?? "\$2.00";
    imageOne = imageOne ?? ImageConstant.imgIconlyBoldHeart;
    id = id ?? "";
  }

  String? vegetarian;

  String? loremipsumdol;

  String? distance;

  String? tf;

  String? zero;

  String? zeroOne;

  String? price;

  String? imageOne;

  String? id;

  AutolayoutSixItemModel copyWith({
    String? vegetarian,
    String? loremipsumdol,
    String? distance,
    String? tf,
    String? zero,
    String? zeroOne,
    String? price,
    String? imageOne,
    String? id,
  }) {
    return AutolayoutSixItemModel(
      vegetarian: vegetarian ?? this.vegetarian,
      loremipsumdol: loremipsumdol ?? this.loremipsumdol,
      distance: distance ?? this.distance,
      tf: tf ?? this.tf,
      zero: zero ?? this.zero,
      zeroOne: zeroOne ?? this.zeroOne,
      price: price ?? this.price,
      imageOne: imageOne ?? this.imageOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        vegetarian,
        loremipsumdol,
        distance,
        tf,
        zero,
        zeroOne,
        price,
        imageOne,
        id
      ];
}
