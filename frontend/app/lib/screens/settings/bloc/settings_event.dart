part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;

  const factory SettingsEvent.changeThemed() = _ChangeThemed;
  const factory SettingsEvent.changeLanguaged() = _ChangeLanguaged;
}
