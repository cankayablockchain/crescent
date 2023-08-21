import 'dart:async';

import 'package:authentication_client/authentication_client.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(UserRepository authenticationRepository)
      : _authenticationRepository = authenticationRepository,
        super(const MainState.unknown()) {
    on<_Started>(_onStarted);
    on<_AuthStateChanged>(_onAuthStateChanged);

    _authStateSubscription =
        _authenticationRepository.onAuthStateChanges.listen(
      (authState) => add(_AuthStateChanged(authState)),
    );
  }

  final UserRepository _authenticationRepository;
  late final StreamSubscription<AuthState> _authStateSubscription;

  Future<void> _onStarted(
    _Started event,
    Emitter<MainState> emit,
  ) async {
    _authenticationRepository.currentUser.fold(
      () => emit(const MainState.unauthenticated()),
      (user) => emit(MainState.authenticated(user)),
    );
  }

  Future<void> _onAuthStateChanged(
    _AuthStateChanged event,
    Emitter<MainState> emit,
  ) async {
    final session = event.authstate.session;
    if (session == null) {
      emit(const MainState.unauthenticated());
    } else {
      emit(MainState.authenticated(session.user));
    }
  }

  @override
  Future<void> close() {
    _authStateSubscription.cancel();
    return super.close();
  }
}
