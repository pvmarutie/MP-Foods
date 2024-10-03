part of 'light_sign_up_blank_form_bloc.dart';

/// Represents the state of LightSignUpBlankForm in the application.

// ignore_for_file: must_be_immutable
class LightSignUpBlankFormState extends Equatable {
  LightSignUpBlankFormState(
      {this.phoneNumberController,
      this.emailInputController,
      this.fullNameInputController,
      this.selectedCountry,
      this.rememberMeCheckbox = false,
      this.lightSignUpBlankFormModelObj});

  TextEditingController? phoneNumberController;

  TextEditingController? emailInputController;

  TextEditingController? fullNameInputController;

  LightSignUpBlankFormModel? lightSignUpBlankFormModelObj;

  Country? selectedCountry;

  bool rememberMeCheckbox;

  @override
  List<Object?> get props => [
        phoneNumberController,
        emailInputController,
        fullNameInputController,
        selectedCountry,
        rememberMeCheckbox,
        lightSignUpBlankFormModelObj
      ];
  LightSignUpBlankFormState copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? emailInputController,
    TextEditingController? fullNameInputController,
    Country? selectedCountry,
    bool? rememberMeCheckbox,
    LightSignUpBlankFormModel? lightSignUpBlankFormModelObj,
  }) {
    return LightSignUpBlankFormState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      emailInputController: emailInputController ?? this.emailInputController,
      fullNameInputController:
          fullNameInputController ?? this.fullNameInputController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      rememberMeCheckbox: rememberMeCheckbox ?? this.rememberMeCheckbox,
      lightSignUpBlankFormModelObj:
          lightSignUpBlankFormModelObj ?? this.lightSignUpBlankFormModelObj,
    );
  }
}
