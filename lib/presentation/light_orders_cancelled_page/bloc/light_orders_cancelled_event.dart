part of 'light_orders_cancelled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightOrdersCancelled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightOrdersCancelledEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightOrdersCancelled widget is first created.
class LightOrdersCancelledInitialEvent extends LightOrdersCancelledEvent {
  @override
  List<Object?> get props => [];
}
