// ignore_for_file: require_trailing_commas

import 'package:bloc/bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(UserRepository authenticationRepository)
      : _authenticationRepository = authenticationRepository,
        super(const SignUpState.form()) {
    on<_NameChanged>(_onNameChanged);
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_ConfirmedPasswordChanged>(_onConfirmedPasswordChanged);
    on<_FormSubmitted>(_onFormSubmitted);
    on<_TogglePasswordVisibility>(_onTogglePasswordVisibility);
    on<_ToggleConfirmedPasswordVisibility>(
        _onToggleConfirmedPasswordVisibility);
  }

  final UserRepository _authenticationRepository;

  Future<void> _onNameChanged(
    _NameChanged event,
    Emitter<SignUpState> emit,
  ) async {
    final name = Name.dirty(event.name);

    emit(state.copyWith(name: name));
  }

  Future<void> _onEmailChanged(
    _EmailChanged event,
    Emitter<SignUpState> emit,
  ) async {
    final email = Email.dirty(event.email);

    emit(state.copyWith(email: email));
  }

  Future<void> _onPasswordChanged(
    _PasswordChanged event,
    Emitter<SignUpState> emit,
  ) async {
    final password = Password.dirty(event.password);

    emit(state.copyWith(password: password));
  }

  Future<void> _onConfirmedPasswordChanged(
    _ConfirmedPasswordChanged event,
    Emitter<SignUpState> emit,
  ) async {
    final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password.value,
      value: event.confirmedPassword,
    );

    emit(state.copyWith(confirmPassword: confirmedPassword));
  }

  void _onTogglePasswordVisibility(
    _TogglePasswordVisibility event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  void _onToggleConfirmedPasswordVisibility(
    _ToggleConfirmedPasswordVisibility event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(showConfirmedPassword: !state.showConfirmedPassword));
  }

  Future<void> _onFormSubmitted(
    _FormSubmitted event,
    Emitter<SignUpState> emit,
  ) async {
    switch (state.step) {
      case SignStep.name:
        if (state.name.isValid) {
          emit(state.copyWith(step: SignStep.email));
        }
      case SignStep.email:
        if (state.email.isValid) {
          emit(state.copyWith(step: SignStep.password));
        }
      case SignStep.password:
        if (state.password.isValid && state.confirmPassword.isValid) {
          await _authenticationRepository
              .signUp(
                password: state.password.value,
                email: state.email.value,
              )
              .run();
        }
    }
  }
}
