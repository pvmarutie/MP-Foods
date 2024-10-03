part of 'light_checkout_orders_full_bloc.dart';

/// Represents the state of LightCheckoutOrdersFull in the application.

// ignore_for_file: must_be_immutable
class LightCheckoutOrdersFullState extends Equatable {
  LightCheckoutOrdersFullState({this.lightCheckoutOrdersFullModelObj});

  LightCheckoutOrdersFullModel? lightCheckoutOrdersFullModelObj;

  @override
  List<Object?> get props => [lightCheckoutOrdersFullModelObj];
  LightCheckoutOrdersFullState copyWith(
      {LightCheckoutOrdersFullModel? lightCheckoutOrdersFullModelObj}) {
    return LightCheckoutOrdersFullState(
      lightCheckoutOrdersFullModelObj: lightCheckoutOrdersFullModelObj ??
          this.lightCheckoutOrdersFullModelObj,
    );
  }
}
