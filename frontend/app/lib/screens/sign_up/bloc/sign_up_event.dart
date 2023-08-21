part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  /// Represents the event when the user's name input changes.
  const factory SignUpEvent.nameChanged(String name) = _NameChanged;

  /// Represents the event when the user's email input changes.
  const factory SignUpEvent.emailChanged(String email) = _EmailChanged;

  /// Represents the event when the user's password input changes.
  const factory SignUpEvent.passwordChanged(String password) = _PasswordChanged;

  /// Represents the event when the user's confirmed password input changes.
  const factory SignUpEvent.confirmedPasswordChanged(String confirmedPassword) =
      _ConfirmedPasswordChanged;

  /// Represents the event when the user wants to submit the sign-up form.
  const factory SignUpEvent.formSubmitted() = _FormSubmitted;

  /// Represents the event when the user toggles password visibility.
  const factory SignUpEvent.togglePasswordVisibility() =
      _TogglePasswordVisibility;

  /// Represents the event when the user toggles confirmed password visibility.
  const factory SignUpEvent.toggleConfirmedPasswordVisibility() =
      _ToggleConfirmedPasswordVisibility;
}
