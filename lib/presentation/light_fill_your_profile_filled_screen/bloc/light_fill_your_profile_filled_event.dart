part of 'light_fill_your_profile_filled_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightFillYourProfileFilled widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightFillYourProfileFilledEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightFillYourProfileFilled widget is first created.
class LightFillYourProfileFilledInitialEvent
    extends LightFillYourProfileFilledEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date

// ignore_for_file: must_be_immutable
class ChangeDateEvent extends LightFillYourProfileFilledEvent {
  ChangeDateEvent({required this.date});

  DateTime date;

  @override
  List<Object?> get props => [date];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends LightFillYourProfileFilledEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}
