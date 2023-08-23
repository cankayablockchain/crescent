import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'proposal_event.dart';
part 'proposal_state.dart';
part 'proposal_bloc.freezed.dart';

class ProposalBloc extends Bloc<ProposalEvent, ProposalState> {
  ProposalBloc() : super(const _Initial()) {
    on<ProposalEvent>((event, emit) {});
  }
}
