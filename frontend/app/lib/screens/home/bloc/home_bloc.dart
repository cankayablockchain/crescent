import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _Feed()) {
    on<_IndexChanged>(_onIndexChanged);
  }

  Future<void> _onIndexChanged(
    _IndexChanged event,
    Emitter<HomeState> emit,
  ) async {
    switch (event.index) {
      case 0:
        emit(const HomeState.feed());
      case 1:
        emit(const HomeState.market());
      case 2:
        emit(const HomeState.assistant());
      case 3:
        emit(const HomeState.actions());
      case 4:
        emit(const HomeState.settings());
    }
  }
}
