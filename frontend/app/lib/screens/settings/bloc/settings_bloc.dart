import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const _Initial()) {
    on<_ChangeThemed>(_onChangeThemed);
    on<_ChangeLanguaged>(_onChangeLanguaged);
  }

  void _onChangeThemed(
    _ChangeThemed event,
    Emitter<SettingsState> emit,
  ) {}

  void _onChangeLanguaged(
    _ChangeLanguaged event,
    Emitter<SettingsState> emit,
  ) {}
}
