part of 'light_fill_your_profile_filled_bloc.dart';

/// Represents the state of LightFillYourProfileFilled in the application.

// ignore_for_file: must_be_immutable
class LightFillYourProfileFilledState extends Equatable {
  LightFillYourProfileFilledState(
      {this.fullNameInputController,
      this.firstNameInputController,
      this.birthdateInputController,
      this.emailInputController,
      this.phoneNumberController,
      this.selectedDropDownValue,
      this.selectedCountry,
      this.lightFillYourProfileFilledModelObj});

  TextEditingController? fullNameInputController;

  TextEditingController? firstNameInputController;

  TextEditingController? birthdateInputController;

  TextEditingController? emailInputController;

  TextEditingController? phoneNumberController;

  SelectionPopupModel? selectedDropDownValue;

  LightFillYourProfileFilledModel? lightFillYourProfileFilledModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        fullNameInputController,
        firstNameInputController,
        birthdateInputController,
        emailInputController,
        phoneNumberController,
        selectedDropDownValue,
        selectedCountry,
        lightFillYourProfileFilledModelObj
      ];
  LightFillYourProfileFilledState copyWith({
    TextEditingController? fullNameInputController,
    TextEditingController? firstNameInputController,
    TextEditingController? birthdateInputController,
    TextEditingController? emailInputController,
    TextEditingController? phoneNumberController,
    SelectionPopupModel? selectedDropDownValue,
    Country? selectedCountry,
    LightFillYourProfileFilledModel? lightFillYourProfileFilledModelObj,
  }) {
    return LightFillYourProfileFilledState(
      fullNameInputController:
          fullNameInputController ?? this.fullNameInputController,
      firstNameInputController:
          firstNameInputController ?? this.firstNameInputController,
      birthdateInputController:
          birthdateInputController ?? this.birthdateInputController,
      emailInputController: emailInputController ?? this.emailInputController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      lightFillYourProfileFilledModelObj: lightFillYourProfileFilledModelObj ??
          this.lightFillYourProfileFilledModelObj,
    );
  }
}
