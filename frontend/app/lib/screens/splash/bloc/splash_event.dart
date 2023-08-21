part of 'splash_bloc.dart';

/// The [SplashEvent] class represents the events that can occur during the splash screen.
@freezed
class SplashEvent with _$SplashEvent {
  /// Represents the event when the app is started.
  const factory SplashEvent.appStarted() = _AppStarted;
}
