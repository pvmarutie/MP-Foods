import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/light_fill_your_profile_filled_model.dart';
part 'light_fill_your_profile_filled_event.dart';
part 'light_fill_your_profile_filled_state.dart';

/// A bloc that manages the state of a LightFillYourProfileFilled according to the event that is dispatched to it.
class LightFillYourProfileFilledBloc extends Bloc<
    LightFillYourProfileFilledEvent, LightFillYourProfileFilledState> {
  LightFillYourProfileFilledBloc(LightFillYourProfileFilledState initialState)
      : super(initialState) {
    on<LightFillYourProfileFilledInitialEvent>(_onInitialize);
    on<ChangeCountryEvent>(_changeCountry);
    on<ChangeDateEvent>(_changeDate);
  }

  _changeCountry(
    ChangeCountryEvent event,
    Emitter<LightFillYourProfileFilledState> emit,
  ) {
    emit(state.copyWith(
      selectedCountry: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    LightFillYourProfileFilledInitialEvent event,
    Emitter<LightFillYourProfileFilledState> emit,
  ) async {
    emit(
      state.copyWith(
        fullNameInputController: TextEditingController(),
        firstNameInputController: TextEditingController(),
        birthdateInputController: TextEditingController(),
        emailInputController: TextEditingController(),
        phoneNumberController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        lightFillYourProfileFilledModelObj:
            state.lightFillYourProfileFilledModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
        ),
      ),
    );
  }

  _changeDate(
    ChangeDateEvent event,
    Emitter<LightFillYourProfileFilledState> emit,
  ) {
    emit(state.copyWith(
        lightFillYourProfileFilledModelObj:
            state.lightFillYourProfileFilledModelObj?.copyWith(
      selectedBirthdateInput: event.date,
    )));
  }
}
