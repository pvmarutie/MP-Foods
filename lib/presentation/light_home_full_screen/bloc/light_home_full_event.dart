part of 'light_home_full_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightHomeFull widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightHomeFullEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightHomeFull widget is first created.
class LightHomeFullInitialEvent extends LightHomeFullEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection

// ignore_for_file: must_be_immutable
class onSelected extends LightHomeFullEvent {
  onSelected({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [value];
}
