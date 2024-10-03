part of 'light_orders_cancelled_bloc.dart';

/// Represents the state of LightOrdersCancelled in the application.

// ignore_for_file: must_be_immutable
class LightOrdersCancelledState extends Equatable {
  LightOrdersCancelledState(
      {this.lightorderscaTabModelObj, this.lightOrdersCancelledModelObj});

  LightOrdersCancelledModel? lightOrdersCancelledModelObj;

  LightorderscaTabModel? lightorderscaTabModelObj;

  @override
  List<Object?> get props =>
      [lightorderscaTabModelObj, lightOrdersCancelledModelObj];
  LightOrdersCancelledState copyWith({
    LightorderscaTabModel? lightorderscaTabModelObj,
    LightOrdersCancelledModel? lightOrdersCancelledModelObj,
  }) {
    return LightOrdersCancelledState(
      lightorderscaTabModelObj:
          lightorderscaTabModelObj ?? this.lightorderscaTabModelObj,
      lightOrdersCancelledModelObj:
          lightOrdersCancelledModelObj ?? this.lightOrdersCancelledModelObj,
    );
  }
}
