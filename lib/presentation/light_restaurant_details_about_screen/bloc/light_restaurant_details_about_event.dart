part of 'light_restaurant_details_about_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightRestaurantDetailsAbout widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightRestaurantDetailsAboutEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightRestaurantDetailsAbout widget is first created.
class LightRestaurantDetailsAboutInitialEvent
    extends LightRestaurantDetailsAboutEvent {
  @override
  List<Object?> get props => [];
}
