part of 'light_restaurant_details_full_bloc.dart';

/// Represents the state of LightRestaurantDetailsFull in the application.

// ignore_for_file: must_be_immutable
class LightRestaurantDetailsFullState extends Equatable {
  LightRestaurantDetailsFullState({this.lightRestaurantDetailsFullModelObj});

  LightRestaurantDetailsFullModel? lightRestaurantDetailsFullModelObj;

  @override
  List<Object?> get props => [lightRestaurantDetailsFullModelObj];
  LightRestaurantDetailsFullState copyWith(
      {LightRestaurantDetailsFullModel? lightRestaurantDetailsFullModelObj}) {
    return LightRestaurantDetailsFullState(
      lightRestaurantDetailsFullModelObj: lightRestaurantDetailsFullModelObj ??
          this.lightRestaurantDetailsFullModelObj,
    );
  }
}
