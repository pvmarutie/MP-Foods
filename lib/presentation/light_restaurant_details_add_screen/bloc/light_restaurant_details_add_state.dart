part of 'light_restaurant_details_add_bloc.dart';

/// Represents the state of LightRestaurantDetailsAdd in the application.

// ignore_for_file: must_be_immutable
class LightRestaurantDetailsAddState extends Equatable {
  LightRestaurantDetailsAddState(
      {this.statusdefaultController,
      this.quantity = 1,
      this.lightRestaurantDetailsAddModelObj});

  TextEditingController? statusdefaultController;

  LightRestaurantDetailsAddModel? lightRestaurantDetailsAddModelObj;

  int quantity;

  @override
  List<Object?> get props =>
      [statusdefaultController, quantity, lightRestaurantDetailsAddModelObj];
  LightRestaurantDetailsAddState copyWith({
    TextEditingController? statusdefaultController,
    int? quantity,
    LightRestaurantDetailsAddModel? lightRestaurantDetailsAddModelObj,
  }) {
    return LightRestaurantDetailsAddState(
      statusdefaultController:
          statusdefaultController ?? this.statusdefaultController,
      quantity: quantity ?? this.quantity,
      lightRestaurantDetailsAddModelObj: lightRestaurantDetailsAddModelObj ??
          this.lightRestaurantDetailsAddModelObj,
    );
  }
}
