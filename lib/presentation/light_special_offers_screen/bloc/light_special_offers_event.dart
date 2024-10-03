part of 'light_special_offers_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LightSpecialOffers widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class LightSpecialOffersEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the LightSpecialOffers widget is first created.
class LightSpecialOffersInitialEvent extends LightSpecialOffersEvent {
  @override
  List<Object?> get props => [];
}
