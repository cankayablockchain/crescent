part of 'splash_bloc.dart';

/// The [SplashState] class represents the various states that the splash screen can be in.
@freezed
class SplashState with _$SplashState {
  /// Represents the initial state of the splash screen.
  const factory SplashState.initial() = _Initial;

  /// Represents the state when the app is loading.
  const factory SplashState.loading() = _Loading;

  /// Represents the state when the app is ready.
  const factory SplashState.ready() = _Ready;

  /// Represents the state when an error occurs in the splash screen.
  const factory SplashState.error(String message) = _Error;
}
