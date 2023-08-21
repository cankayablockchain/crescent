// Importing the 'formz' package, which streamlines form input validation and management.
import 'package:formz/formz.dart';

/// Enum that enumerates validation errors for the [Name] form input.
enum NameValidationError {
  /// An error indicating that the input name is invalid.
  invalid,
}

/// The [Name] class represents a form input for capturing user names.
class Name extends FormzInput<String, NameValidationError> {
  /// Construct an instance of [Name] in its initial pristine state.
  const Name.pure() : super.pure('');

  /// Construct an instance of [Name] in a dirty state, optionally with an initial value.
  const Name.dirty([super.value = '']) : super.dirty();

  /// Regular expression for matching valid name formats.
  static final _nameRegExp = RegExp(
    // A regular expression pattern to validate user names.
    r'^[a-zA-Z]+( [a-zA-Z]+)*$',
  );

  /// Validate the provided name value using the name regular expression.
  @override
  NameValidationError? validator(String? value) {
    // Check if the value matches the name regular expression.
    return _nameRegExp.hasMatch(value ?? '')
        ? null
        : NameValidationError.invalid;
  }
}
