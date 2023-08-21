part of 'onboard_bloc.dart';

@freezed
class OnboardEvent with _$OnboardEvent {
  const factory OnboardEvent.started() = _Started;

  const factory OnboardEvent.onboardCompleted() = _OnboardCompleted;

  const factory OnboardEvent.onboardSkipped() = _OnboardSkipped;

  const factory OnboardEvent.onboardPageChanged(int index) =
      _OnboardPageChanged;
}
