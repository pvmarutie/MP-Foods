import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/light_sign_up_blank_form_model.dart';
part 'light_sign_up_blank_form_event.dart';
part 'light_sign_up_blank_form_state.dart';

/// A bloc that manages the state of a LightSignUpBlankForm according to the event that is dispatched to it.
class LightSignUpBlankFormBloc
    extends Bloc<LightSignUpBlankFormEvent, LightSignUpBlankFormState> {
  LightSignUpBlankFormBloc(LightSignUpBlankFormState initialState)
      : super(initialState) {
    on<LightSignUpBlankFormInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<LightSignUpBlankFormState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<LightSignUpBlankFormState> emit,
  ) {
    emit(state.copyWith(
      rememberMeCheckbox: event.value,
    ));
  }

  _onInitialize(
    LightSignUpBlankFormInitialEvent event,
    Emitter<LightSignUpBlankFormState> emit,
  ) async {
    emit(
      state.copyWith(
        phoneNumberController: TextEditingController(),
        emailInputController: TextEditingController(),
        fullNameInputController: TextEditingController(),
        rememberMeCheckbox: false,
      ),
    );
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.lightFillYourProfileFilledScreen,
      );
    });
  }
}
