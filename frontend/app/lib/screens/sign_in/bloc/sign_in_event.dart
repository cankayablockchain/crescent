part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.emailChanged(String email) = _EmailChanged;
  const factory SignInEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SignInEvent.formSubmitted() = _FormSubmitted;
  const factory SignInEvent.togglePasswordVisibility() =
      _TogglePasswordVisibility;
}
