import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_detail_event.dart';
part 'offer_detail_state.dart';
part 'offer_detail_bloc.freezed.dart';

class OfferDetailBloc extends Bloc<OfferDetailEvent, OfferDetailState> {
  OfferDetailBloc() : super(const _Initial()) {
    on<OfferDetailEvent>((event, emit) {});
  }
}
