part of 'light_checkout_orders_full1_bloc.dart';

/// Represents the state of LightCheckoutOrdersFull1 in the application.

// ignore_for_file: must_be_immutable
class LightCheckoutOrdersFull1State extends Equatable {
  LightCheckoutOrdersFull1State({this.lightCheckoutOrdersFull1ModelObj});

  LightCheckoutOrdersFull1Model? lightCheckoutOrdersFull1ModelObj;

  @override
  List<Object?> get props => [lightCheckoutOrdersFull1ModelObj];
  LightCheckoutOrdersFull1State copyWith(
      {LightCheckoutOrdersFull1Model? lightCheckoutOrdersFull1ModelObj}) {
    return LightCheckoutOrdersFull1State(
      lightCheckoutOrdersFull1ModelObj: lightCheckoutOrdersFull1ModelObj ??
          this.lightCheckoutOrdersFull1ModelObj,
    );
  }
}
