// Importing the 'formz' package, which streamlines form input validation and management.
import 'package:formz/formz.dart';

/// Enum that enumerates validation errors for the [Password] form input.
enum PasswordValidationError {
  /// An error indicating that the input password is invalid.
  invalid,
}

/// The [Password] class represents a form input for capturing user passwords.
class Password extends FormzInput<String, PasswordValidationError> {
  /// Construct an instance of [Password] in its initial pristine state.
  const Password.pure() : super.pure('');

  /// Construct an instance of [Password] in a dirty state, optionally with an initial value.
  const Password.dirty([super.value = '']) : super.dirty();

  /// Regular expression for matching valid password formats.
  static final _passwordRegExp =
      RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');

  /// Validate the provided password value using the password regular expression.
  @override
  PasswordValidationError? validator(String? value) {
    // Check if the value matches the password regular expression.
    return _passwordRegExp.hasMatch(value ?? '')
        ? null
        : PasswordValidationError.invalid;
  }
}
