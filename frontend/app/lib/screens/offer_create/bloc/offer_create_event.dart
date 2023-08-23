part of 'offer_create_bloc.dart';

@freezed
class OfferCreateEvent with _$OfferCreateEvent {
  const factory OfferCreateEvent.started() = _Started;
  const factory OfferCreateEvent.titleChanged(String title) = _TitleChanged;
  const factory OfferCreateEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory OfferCreateEvent.priceChanged(String price) = _PriceChanged;
  const factory OfferCreateEvent.quantityChanged(String quantity) =
      _QuantityChanged;
  const factory OfferCreateEvent.createOffer() = _CreateOffer;
}
