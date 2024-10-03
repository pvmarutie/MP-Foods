import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [specialofferslist_item_widget] screen.

// ignore_for_file: must_be_immutable
class SpecialofferslistItemModel extends Equatable {
  SpecialofferslistItemModel(
      {this.thirty, this.discountonly, this.image, this.id}) {
    thirty = thirty ?? "30%";
    discountonly = discountonly ?? "discount only valid for today!";
    image = image ?? ImageConstant.imgImage;
    id = id ?? "";
  }

  String? thirty;

  String? discountonly;

  String? image;

  String? id;

  SpecialofferslistItemModel copyWith({
    String? thirty,
    String? discountonly,
    String? image,
    String? id,
  }) {
    return SpecialofferslistItemModel(
      thirty: thirty ?? this.thirty,
      discountonly: discountonly ?? this.discountonly,
      image: image ?? this.image,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [thirty, discountonly, image, id];
}
