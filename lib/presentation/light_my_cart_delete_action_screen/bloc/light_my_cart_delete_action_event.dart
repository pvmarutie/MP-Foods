part of 'light_my_cart_delete_action_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightMyCartDeleteAction widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightMyCartDeleteActionEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightMyCartDeleteAction widget is first created.
class LightMyCartDeleteActionInitialEvent extends LightMyCartDeleteActionEvent {
  @override
  List<Object?> get props => [];
}
