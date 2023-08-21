// Importing the 'formz' package, which simplifies form input validation and management.
import 'package:formz/formz.dart';

/// Enum that defines validation errors for the [Handle] form input.
enum HandleValidationError {
  /// An error indicating that the input handle is invalid.
  invalid,
}

/// The [Handle] class represents a form input for handling user handles.
class Handle extends FormzInput<String, HandleValidationError> {
  /// Construct an instance of [Handle] in its initial pristine state.
  const Handle.pure() : super.pure('');

  /// Construct an instance of [Handle] in a dirty state, potentially with an initial value.
  const Handle.dirty([super.value = '']) : super.dirty();

  /// Regular expression for matching valid handle formats.
  static final _handleRegExp = RegExp(
    // A regular expression pattern to validate user handles.
    r'^[a-zA-Z0-9](_(?!(\.|_))|\.(?!(_|\.))|[a-zA-Z0-9]){6,18}[a-zA-Z0-9]$',
  );

  /// Validate the provided handle value using the handle regular expression.
  @override
  HandleValidationError? validator(String? value) {
    // Check if the value matches the handle regular expression.
    return _handleRegExp.hasMatch(value ?? '')
        ? null
        : HandleValidationError.invalid;
  }
}
