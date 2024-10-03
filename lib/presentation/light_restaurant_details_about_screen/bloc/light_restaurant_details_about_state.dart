part of 'light_restaurant_details_about_bloc.dart';

/// Represents the state of LightRestaurantDetailsAbout in the application.

// ignore_for_file: must_be_immutable
class LightRestaurantDetailsAboutState extends Equatable {
  LightRestaurantDetailsAboutState({this.lightRestaurantDetailsAboutModelObj});

  LightRestaurantDetailsAboutModel? lightRestaurantDetailsAboutModelObj;

  @override
  List<Object?> get props => [lightRestaurantDetailsAboutModelObj];
  LightRestaurantDetailsAboutState copyWith(
      {LightRestaurantDetailsAboutModel? lightRestaurantDetailsAboutModelObj}) {
    return LightRestaurantDetailsAboutState(
      lightRestaurantDetailsAboutModelObj:
          lightRestaurantDetailsAboutModelObj ??
              this.lightRestaurantDetailsAboutModelObj,
    );
  }
}
