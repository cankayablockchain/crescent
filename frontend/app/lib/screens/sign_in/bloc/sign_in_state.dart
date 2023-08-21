part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.form({
    /// The user's input for their email.
    @Default(Email.pure()) Email email,

    /// The user's input for their password.
    @Default(Password.pure()) Password password,

    /// The current submission status of the form.
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,

    /// Indicates whether the password input is shown or hidden.
    @Default(false) bool showPassword,

    /// Indicates whether the form is valid to post.
    @Default(false) bool isValid,
  }) = _Form;
}
