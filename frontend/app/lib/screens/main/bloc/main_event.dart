part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.started() = _Started;
  const factory MainEvent.authStateChanged(AuthState authstate) =
      _AuthStateChanged;
}
