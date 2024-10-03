part of 'light_checkout_orders_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightCheckoutOrdersFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightCheckoutOrdersFullEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightCheckoutOrdersFull widget is first created.
class LightCheckoutOrdersFullInitialEvent extends LightCheckoutOrdersFullEvent {
  @override
  List<Object?> get props => [];
}
