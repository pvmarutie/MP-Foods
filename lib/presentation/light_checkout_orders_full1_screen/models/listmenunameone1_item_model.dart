import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listmenunameone1_item_widget] screen.

// ignore_for_file: must_be_immutable
class Listmenunameone1ItemModel extends Equatable {
  Listmenunameone1ItemModel(
      {this.image, this.menunameone, this.price, this.id}) {
    image = image ?? ImageConstant.imgRectangle80x80;
    menunameone = menunameone ?? "Mixed Vegetable Sal...";
    price = price ?? "\$12.00";
    id = id ?? "";
  }

  String? image;

  String? menunameone;

  String? price;

  String? id;

  Listmenunameone1ItemModel copyWith({
    String? image,
    String? menunameone,
    String? price,
    String? id,
  }) {
    return Listmenunameone1ItemModel(
      image: image ?? this.image,
      menunameone: menunameone ?? this.menunameone,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [image, menunameone, price, id];
}
