import 'package:equatable/equatable.dart';

/// This class is used in the [addresslist_item_widget] screen.

// ignore_for_file: must_be_immutable
class AddresslistItemModel extends Equatable {
  AddresslistItemModel(
      {this.location, this.detailsaddress, this.radioGroup, this.id}) {
    location = location ?? "Home";
    detailsaddress = detailsaddress ?? "Times Square NYC, Manhattan, 27";
    radioGroup = radioGroup ?? "";
    id = id ?? "";
  }

  String? location;

  String? detailsaddress;

  String? radioGroup;

  String? id;

  AddresslistItemModel copyWith({
    String? location,
    String? detailsaddress,
    String? radioGroup,
    String? id,
  }) {
    return AddresslistItemModel(
      location: location ?? this.location,
      detailsaddress: detailsaddress ?? this.detailsaddress,
      radioGroup: radioGroup ?? this.radioGroup,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [location, detailsaddress, radioGroup, id];
}
