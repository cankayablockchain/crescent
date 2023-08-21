part of 'onboard_bloc.dart';

@freezed
class OnboardState with _$OnboardState {
  const factory OnboardState.initial() = _Initial;
  const factory OnboardState.loading() = _Loading;
  const factory OnboardState.loaded({
    @Default(0) int currentPage,
  }) = _Loaded;
  const factory OnboardState.error(String message) = _Error;
}
