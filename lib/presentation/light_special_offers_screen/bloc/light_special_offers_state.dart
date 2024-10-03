part of 'light_special_offers_bloc.dart';

/// Represents the state of LightSpecialOffers in the application.

// ignore_for_file: must_be_immutable
class LightSpecialOffersState extends Equatable {
  LightSpecialOffersState({this.lightSpecialOffersModelObj});

  LightSpecialOffersModel? lightSpecialOffersModelObj;

  @override
  List<Object?> get props => [lightSpecialOffersModelObj];
  LightSpecialOffersState copyWith(
      {LightSpecialOffersModel? lightSpecialOffersModelObj}) {
    return LightSpecialOffersState(
      lightSpecialOffersModelObj:
          lightSpecialOffersModelObj ?? this.lightSpecialOffersModelObj,
    );
  }
}
