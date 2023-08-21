// Importing the 'formz' package, which streamlines form input validation and management.
import 'package:formz/formz.dart';

/// Enum that enumerates the possible validation errors for the [Email] form input.
enum EmailValidationError {
  /// An error indicating that the input email is invalid.
  invalid,
}

/// The [Email] class represents a reusable form input for email validation.
class Email extends FormzInput<String, EmailValidationError> {
  /// Construct an instance of [Email] in its initial pristine state.
  const Email.pure() : super.pure('');

  /// Construct an instance of [Email] in a dirty state, possibly with an initial value.
  const Email.dirty([super.value = '']) : super.dirty();

  /// Regular expression for matching valid email formats.
  static final RegExp _emailRegExp = RegExp(
    // A regular expression pattern to validate email addresses.
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );

  /// Validate the provided email value using the email regular expression.
  @override
  EmailValidationError? validator(String value) {
    // Check if the value matches the email regular expression.
    return _emailRegExp.hasMatch(value) ? null : EmailValidationError.invalid;
  }
}
