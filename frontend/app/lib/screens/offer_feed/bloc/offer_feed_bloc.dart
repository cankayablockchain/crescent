import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_feed_event.dart';
part 'offer_feed_state.dart';
part 'offer_feed_bloc.freezed.dart';

class OfferFeedBloc extends Bloc<OfferFeedEvent, OfferFeedState> {
  OfferFeedBloc() : super(const _Initial()) {
    on<OfferFeedEvent>((event, emit) {});
  }
}
