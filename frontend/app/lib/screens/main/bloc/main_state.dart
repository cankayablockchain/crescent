part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.authenticated() = _Authenticated;
  const factory MainState.unauthenticated() = _Unauthenticated;
  const factory MainState.unknown() = _Unknown;
}
