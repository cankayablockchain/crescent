import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_create_event.dart';
part 'offer_create_state.dart';
part 'offer_create_bloc.freezed.dart';

class OfferCreateBloc extends Bloc<OfferCreateEvent, OfferCreateState> {
  OfferCreateBloc() : super(const _State()) {
    on<OfferCreateEvent>((event, emit) {});
  }
}
