import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [promolist_item_widget] screen.

// ignore_for_file: must_be_immutable
class PromolistItemModel extends Equatable {
  PromolistItemModel({this.image, this.xloremipsum, this.price, this.id}) {
    image = image ?? ImageConstant.imgRectangle20;
    xloremipsum = xloremipsum ?? "1x Fresh Avocado Juice";
    price = price ?? "\$4.00";
    id = id ?? "";
  }

  String? image;

  String? xloremipsum;

  String? price;

  String? id;

  PromolistItemModel copyWith({
    String? image,
    String? xloremipsum,
    String? price,
    String? id,
  }) {
    return PromolistItemModel(
      image: image ?? this.image,
      xloremipsum: xloremipsum ?? this.xloremipsum,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [image, xloremipsum, price, id];
}
