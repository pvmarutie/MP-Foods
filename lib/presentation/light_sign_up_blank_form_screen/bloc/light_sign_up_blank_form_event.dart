part of 'light_sign_up_blank_form_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightSignUpBlankForm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightSignUpBlankFormEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightSignUpBlankForm widget is first created.
class LightSignUpBlankFormInitialEvent extends LightSignUpBlankFormEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends LightSignUpBlankFormEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}

///Event for changing checkbox

// ignore_for_file: must_be_immutable
class ChangeCheckBoxEvent extends LightSignUpBlankFormEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
