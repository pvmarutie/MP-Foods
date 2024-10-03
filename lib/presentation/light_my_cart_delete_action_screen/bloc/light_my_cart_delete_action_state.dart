part of 'light_my_cart_delete_action_bloc.dart';

/// Represents the state of LightMyCartDeleteAction in the application.

// ignore_for_file: must_be_immutable
class LightMyCartDeleteActionState extends Equatable {
  LightMyCartDeleteActionState({this.lightMyCartDeleteActionModelObj});

  LightMyCartDeleteActionModel? lightMyCartDeleteActionModelObj;

  @override
  List<Object?> get props => [lightMyCartDeleteActionModelObj];
  LightMyCartDeleteActionState copyWith(
      {LightMyCartDeleteActionModel? lightMyCartDeleteActionModelObj}) {
    return LightMyCartDeleteActionState(
      lightMyCartDeleteActionModelObj: lightMyCartDeleteActionModelObj ??
          this.lightMyCartDeleteActionModelObj,
    );
  }
}
