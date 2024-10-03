part of 'light_restaurant_details_add_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightRestaurantDetailsAdd widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightRestaurantDetailsAddEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightRestaurantDetailsAdd widget is first created.
class LightRestaurantDetailsAddInitialEvent
    extends LightRestaurantDetailsAddEvent {
  @override
  List<Object?> get props => [];
}

///Event for updating quantity

// ignore_for_file: must_be_immutable
class DecrementQuantity1Event extends LightRestaurantDetailsAddEvent {
  DecrementQuantity1Event({required this.quantity});

  int quantity;

  @override
  List<Object?> get props => [quantity];
}

///Event for updating quantity

// ignore_for_file: must_be_immutable
class IncrementQuantity1Event extends LightRestaurantDetailsAddEvent {
  IncrementQuantity1Event({required this.quantity});

  int quantity;

  @override
  List<Object?> get props => [quantity];
}
