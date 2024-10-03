import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [autolayout_four_item_widget] screen.

// ignore_for_file: must_be_immutable
class AutolayoutFourItemModel extends Equatable {
  AutolayoutFourItemModel(
      {this.mixedSalad,
      this.loremipsumdol,
      this.distance,
      this.tf,
      this.zero,
      this.zeroOne,
      this.price,
      this.one,
      this.priceOne,
      this.id}) {
    mixedSalad = mixedSalad ?? ImageConstant.imgRectangle;
    loremipsumdol = loremipsumdol ?? "Mixed Salad Bonb...";
    distance = distance ?? "1.5 km";
    tf = tf ?? "|";
    zero = zero ?? "4.8";
    zeroOne = zeroOne ?? "(1.2k)";
    price = price ?? "\$6.00";
    one = one ?? "|";
    priceOne = priceOne ?? "\$2.00";
    id = id ?? "";
  }

  String? mixedSalad;

  String? loremipsumdol;

  String? distance;

  String? tf;

  String? zero;

  String? zeroOne;

  String? price;

  String? one;

  String? priceOne;

  String? id;

  AutolayoutFourItemModel copyWith({
    String? mixedSalad,
    String? loremipsumdol,
    String? distance,
    String? tf,
    String? zero,
    String? zeroOne,
    String? price,
    String? one,
    String? priceOne,
    String? id,
  }) {
    return AutolayoutFourItemModel(
      mixedSalad: mixedSalad ?? this.mixedSalad,
      loremipsumdol: loremipsumdol ?? this.loremipsumdol,
      distance: distance ?? this.distance,
      tf: tf ?? this.tf,
      zero: zero ?? this.zero,
      zeroOne: zeroOne ?? this.zeroOne,
      price: price ?? this.price,
      one: one ?? this.one,
      priceOne: priceOne ?? this.priceOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        mixedSalad,
        loremipsumdol,
        distance,
        tf,
        zero,
        zeroOne,
        price,
        one,
        priceOne,
        id
      ];
}
