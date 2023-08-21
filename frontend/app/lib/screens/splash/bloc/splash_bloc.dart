import 'package:app/app/app.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

/// The [SplashBloc] manages splash screen events and the splash state.
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  /// Creates a [SplashBloc] instance with an initial state of [_Initial].
  SplashBloc() : super(const _Initial()) {
    on<_AppStarted>(_onAppStarted);
  }

  /// Handles the [_AppStarted] event to perform actions when the app is started.
  ///
  /// This method initializes app dependencies and navigates to the main route.
  Future<void> _onAppStarted(
    _AppStarted event,
    Emitter<SplashState> emit,
  ) async {
    try {
      emit(const SplashState.loading());
      // Navigate to the main route.

      await injectInSplash();

      emit(const SplashState.ready());
    } catch (e) {
      // Navigate to the error route.
      emit(SplashState.error(e.toString()));
    }
  }
}
