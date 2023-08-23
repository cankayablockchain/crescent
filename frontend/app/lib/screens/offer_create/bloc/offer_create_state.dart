part of 'offer_create_bloc.dart';

@freezed
class OfferCreateState with _$OfferCreateState {
  const factory OfferCreateState.state({
    @Default('') String title,
    @Default('') String description,
    @Default(0) int price,
    @Default(0) int quantity,
  }) = _State;
}
