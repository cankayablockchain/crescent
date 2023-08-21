part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.feed() = _Feed;
  const factory HomeState.market() = _Market;
  const factory HomeState.assistant() = _Assistant;
  const factory HomeState.actions() = _Actions;
  const factory HomeState.settings() = _Settings;
}
