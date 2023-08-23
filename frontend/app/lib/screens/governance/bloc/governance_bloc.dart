import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'governance_event.dart';
part 'governance_state.dart';
part 'governance_bloc.freezed.dart';

class GovernanceBloc extends Bloc<GovernanceEvent, GovernanceState> {
  GovernanceBloc() : super(const _Initial()) {
    on<GovernanceEvent>((event, emit) {});
  }
}
