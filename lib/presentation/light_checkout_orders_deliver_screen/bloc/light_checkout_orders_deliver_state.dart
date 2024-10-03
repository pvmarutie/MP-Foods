part of 'light_checkout_orders_deliver_bloc.dart';

/// Represents the state of LightCheckoutOrdersDeliver in the application.

// ignore_for_file: must_be_immutable
class LightCheckoutOrdersDeliverState extends Equatable {
  LightCheckoutOrdersDeliverState({this.lightCheckoutOrdersDeliverModelObj});

  LightCheckoutOrdersDeliverModel? lightCheckoutOrdersDeliverModelObj;

  @override
  List<Object?> get props => [lightCheckoutOrdersDeliverModelObj];
  LightCheckoutOrdersDeliverState copyWith(
      {LightCheckoutOrdersDeliverModel? lightCheckoutOrdersDeliverModelObj}) {
    return LightCheckoutOrdersDeliverState(
      lightCheckoutOrdersDeliverModelObj: lightCheckoutOrdersDeliverModelObj ??
          this.lightCheckoutOrdersDeliverModelObj,
    );
  }
}
