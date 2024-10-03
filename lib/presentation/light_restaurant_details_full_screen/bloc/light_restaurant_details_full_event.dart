part of 'light_restaurant_details_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightRestaurantDetailsFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightRestaurantDetailsFullEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightRestaurantDetailsFull widget is first created.
class LightRestaurantDetailsFullInitialEvent
    extends LightRestaurantDetailsFullEvent {
  @override
  List<Object?> get props => [];
}
