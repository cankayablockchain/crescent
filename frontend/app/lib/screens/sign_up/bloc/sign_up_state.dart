part of 'sign_up_bloc.dart';

/// Represents the state of the sign-up form in the sign-up BLoC.
@freezed
class SignUpState with _$SignUpState {
  /// Constructor for the [SignUpState] class.
  /// The [_Form] factory constructor initializes the sign-up form state.
  const factory SignUpState.form({
    /// The user's input for their name.
    @Default(Name.pure()) Name name,

    /// The user's input for their email.
    @Default(Email.pure()) Email email,

    /// The user's input for their password.
    @Default(Password.pure()) Password password,

    /// The user's input for confirming the password.
    @Default(ConfirmedPassword.pure()) ConfirmedPassword confirmPassword,

    /// Indicates whether the password input is shown or hidden.
    @Default(true) bool showPassword,

    /// Indicates whether the confirmed password input is shown or hidden.
    @Default(true) bool showConfirmedPassword,

    /// The current submission status of the form.
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,

    /// The current step in the sign-up process.
    @Default(SignStep.name) SignStep step,
  }) = _Form;
}

enum SignStep {
  name,
  email,
  password,
}
