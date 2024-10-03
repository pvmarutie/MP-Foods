import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [cartlistsection_item_widget] screen.

// ignore_for_file: must_be_immutable
class CartlistsectionItemModel extends Equatable {
  CartlistsectionItemModel(
      {this.image,
      this.imageOne,
      this.imageTwo,
      this.loremipsumdol,
      this.itemsCounter,
      this.tf,
      this.distance,
      this.price,
      this.id}) {
    image = image ?? ImageConstant.imgRectangle5;
    imageOne = imageOne ?? ImageConstant.imgRectangle6;
    imageTwo = imageTwo ?? ImageConstant.imgRectangle7;
    loremipsumdol = loremipsumdol ?? "Dessert Cake - Lo...";
    itemsCounter = itemsCounter ?? "4 items";
    tf = tf ?? "|";
    distance = distance ?? "2.3 km";
    price = price ?? "\$22.00";
    id = id ?? "";
  }

  String? image;

  String? imageOne;

  String? imageTwo;

  String? loremipsumdol;

  String? itemsCounter;

  String? tf;

  String? distance;

  String? price;

  String? id;

  CartlistsectionItemModel copyWith({
    String? image,
    String? imageOne,
    String? imageTwo,
    String? loremipsumdol,
    String? itemsCounter,
    String? tf,
    String? distance,
    String? price,
    String? id,
  }) {
    return CartlistsectionItemModel(
      image: image ?? this.image,
      imageOne: imageOne ?? this.imageOne,
      imageTwo: imageTwo ?? this.imageTwo,
      loremipsumdol: loremipsumdol ?? this.loremipsumdol,
      itemsCounter: itemsCounter ?? this.itemsCounter,
      tf: tf ?? this.tf,
      distance: distance ?? this.distance,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        image,
        imageOne,
        imageTwo,
        loremipsumdol,
        itemsCounter,
        tf,
        distance,
        price,
        id
      ];
}
