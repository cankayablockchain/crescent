part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.authenticated(User user) = _Authenticated;
  const factory MainState.unauthenticated() = _Unauthenticated;
  const factory MainState.unknown() = _Unknown;
}
