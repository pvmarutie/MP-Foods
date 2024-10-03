import 'package:equatable/equatable.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [light_fill_your_profile_filled_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class LightFillYourProfileFilledModel extends Equatable {
  LightFillYourProfileFilledModel(
      {this.selectedBirthdateInput,
      this.birthdateInput = "\"\"",
      this.dropdownItemList = const []}) {
    selectedBirthdateInput = selectedBirthdateInput ?? DateTime.now();
  }

  DateTime? selectedBirthdateInput;

  String birthdateInput;

  List<SelectionPopupModel> dropdownItemList;

  LightFillYourProfileFilledModel copyWith({
    DateTime? selectedBirthdateInput,
    String? birthdateInput,
    List<SelectionPopupModel>? dropdownItemList,
  }) {
    return LightFillYourProfileFilledModel(
      selectedBirthdateInput:
          selectedBirthdateInput ?? this.selectedBirthdateInput,
      birthdateInput: birthdateInput ?? this.birthdateInput,
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props =>
      [selectedBirthdateInput, birthdateInput, dropdownItemList];
}
