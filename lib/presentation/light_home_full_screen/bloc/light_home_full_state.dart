part of 'light_home_full_bloc.dart';

/// Represents the state of LightHomeFull in the application.

// ignore_for_file: must_be_immutable
class LightHomeFullState extends Equatable {
  LightHomeFullState(
      {this.searchController,
      this.selectedDropDownValue,
      this.lighthomeTabModelObj,
      this.lightHomeFullInitialModelObj,
      this.lightHomeFullModelObj});

  TextEditingController? searchController;

  SelectionPopupModel? selectedDropDownValue;

  LightHomeFullModel? lightHomeFullModelObj;

  LighthomeTabModel? lighthomeTabModelObj;

  LightHomeFullInitialModel? lightHomeFullInitialModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectedDropDownValue,
        lighthomeTabModelObj,
        lightHomeFullInitialModelObj,
        lightHomeFullModelObj
      ];
  LightHomeFullState copyWith({
    TextEditingController? searchController,
    SelectionPopupModel? selectedDropDownValue,
    LighthomeTabModel? lighthomeTabModelObj,
    LightHomeFullInitialModel? lightHomeFullInitialModelObj,
    LightHomeFullModel? lightHomeFullModelObj,
  }) {
    return LightHomeFullState(
      searchController: searchController ?? this.searchController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      lighthomeTabModelObj: lighthomeTabModelObj ?? this.lighthomeTabModelObj,
      lightHomeFullInitialModelObj:
          lightHomeFullInitialModelObj ?? this.lightHomeFullInitialModelObj,
      lightHomeFullModelObj:
          lightHomeFullModelObj ?? this.lightHomeFullModelObj,
    );
  }
}
