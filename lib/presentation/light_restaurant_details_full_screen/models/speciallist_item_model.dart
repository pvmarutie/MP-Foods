import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [speciallist_item_widget] screen.

// ignore_for_file: must_be_immutable
class SpeciallistItemModel extends Equatable {
  SpeciallistItemModel(
      {this.specialBound, this.loremipsum, this.price, this.id}) {
    specialBound = specialBound ?? ImageConstant.imgRectangle100x100;
    loremipsum = loremipsum ?? "Special Bound Salad";
    price = price ?? "\$10.50";
    id = id ?? "";
  }

  String? specialBound;

  String? loremipsum;

  String? price;

  String? id;

  SpeciallistItemModel copyWith({
    String? specialBound,
    String? loremipsum,
    String? price,
    String? id,
  }) {
    return SpeciallistItemModel(
      specialBound: specialBound ?? this.specialBound,
      loremipsum: loremipsum ?? this.loremipsum,
      price: price ?? this.price,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [specialBound, loremipsum, price, id];
}
