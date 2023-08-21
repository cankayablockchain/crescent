import 'package:bloc/bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_repository/user_repository.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(UserRepository authenticationRepository)
      : _authenticationRepository = authenticationRepository,
        super(const _Form()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_FormSubmitted>(_onFormSubmitted);
    on<_TogglePasswordVisibility>(_onTogglePasswordVisibility);
  }

  final UserRepository _authenticationRepository;

  void _onEmailChanged(
    _EmailChanged event,
    Emitter<SignInState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.password]),
      ),
    );
  }

  void _onPasswordChanged(
    _PasswordChanged event,
    Emitter<SignInState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([state.email, password]),
      ),
    );
  }

  void _onTogglePasswordVisibility(
    _TogglePasswordVisibility event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  Future<void> _onFormSubmitted(
    _FormSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    if (state.isValid) {
      emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

      final req = await _authenticationRepository
          .signInWithPassword(
            email: state.email.value,
            password: state.password.value,
          )
          .run();

      req.fold(
        (l) => FormzSubmissionStatus.failure,
        (r) => null,
      );
    }
  }
}
