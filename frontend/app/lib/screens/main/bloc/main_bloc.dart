import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wc_web3_authentication_client/wc_web3_authentication_client.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc(WCWeb3AuthenticationClient web3repository)
      : _web3repository = web3repository,
        super(const MainState.unknown()) {
    on<_Started>(_onStarted);
    on<_AuthStateChanged>(_onAuthStateChanged);

    _web3repository.walletConnectModalService!
        .addListener(() => add(const _AuthStateChanged()));
  }

  final WCWeb3AuthenticationClient _web3repository;

  Future<void> _onStarted(
    _Started event,
    Emitter<MainState> emit,
  ) async {
    final isConnected =
        _web3repository.walletConnectModalService?.address != null &&
            _web3repository.walletConnectModalService!.isConnected;
    if (isConnected) {
      emit(const MainState.authenticated());
    } else {
      emit(const MainState.unauthenticated());
    }
  }

  Future<void> _onAuthStateChanged(
    _AuthStateChanged event,
    Emitter<MainState> emit,
  ) async {
    final isConnected =
        _web3repository.walletConnectModalService?.address != null;
    if (isConnected) {
      emit(const MainState.authenticated());
    } else {
      emit(const MainState.unauthenticated());
    }
  }
}
