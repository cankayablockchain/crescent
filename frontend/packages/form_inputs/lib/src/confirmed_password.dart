// Importing the 'formz' package, which facilitates form input validation and management.
import 'package:formz/formz.dart';

/// Enum that represents possible validation errors for the [ConfirmedPassword] form input.
enum ConfirmedPasswordValidationError {
  /// An error indicating that the input is generally invalid.
  invalid,

  /// An error indicating that the confirmed password does not match the original password.
  mismatch
}

/// A specialized form input class, [ConfirmedPassword], designed to manage and validate
/// the confirmation of a password.
class ConfirmedPassword
    extends FormzInput<String, ConfirmedPasswordValidationError> {
  /// Construct a [ConfirmedPassword] in its initial pristine state.
  const ConfirmedPassword.pure({this.password = ''}) : super.pure('');

  /// Construct a [ConfirmedPassword] in a dirty state, indicating user interaction.
  const ConfirmedPassword.dirty({required this.password, String value = ''})
      : super.dirty(value);

  /// The original password against which confirmation is being validated.
  final String password;

  /// Validate the provided input value against the original password.
  @override
  ConfirmedPasswordValidationError? validator(String? value) {
    // Check if the provided value matches the original password.
    return password == value ? null : ConfirmedPasswordValidationError.invalid;
  }
}
