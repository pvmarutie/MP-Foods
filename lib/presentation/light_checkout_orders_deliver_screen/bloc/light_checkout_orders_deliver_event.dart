part of 'light_checkout_orders_deliver_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightCheckoutOrdersDeliver widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightCheckoutOrdersDeliverEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightCheckoutOrdersDeliver widget is first created.
class LightCheckoutOrdersDeliverInitialEvent
    extends LightCheckoutOrdersDeliverEvent {
  @override
  List<Object?> get props => [];
}

// ignore_for_file: must_be_immutable
class AddresslistItemEvent extends LightCheckoutOrdersDeliverEvent {
  AddresslistItemEvent({required this.index, this.radioGroup});

  int index;

  String? radioGroup;

  @override
  List<Object?> get props => [index, radioGroup];
}
