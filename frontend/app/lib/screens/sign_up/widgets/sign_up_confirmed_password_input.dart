// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_up_bloc.dart';

/// A widget representing the input field for confirming the password during sign-up.
class SignUpConfirmedPasswordInput extends StatelessWidget {
  /// Constructs a [SignUpConfirmedPasswordInput].
  const SignUpConfirmedPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: _buildWhen,
      builder: (context, state) {
        return TextFormField(
          decoration: _buildInputDecoration(context),
          obscureText: state.showConfirmedPassword,
          onChanged: _onConfirmedPasswordChanged(context),
        );
      },
    );
  }

  /// Builds the input field decoration.
  InputDecoration _buildInputDecoration(BuildContext context) {
    return InputDecoration(
      labelText: 'Confirm Password',
      suffixIcon: IconButton(
        onPressed: _togglePasswordVisibility(context),
        icon: const Icon(Icons.visibility),
      ),
    );
  }

  /// Determines whether the widget should rebuild based on changes in state.
  bool _buildWhen(SignUpState previous, SignUpState current) {
    return previous.confirmPassword != current.confirmPassword ||
        previous.showConfirmedPassword != current.showConfirmedPassword;
  }

  /// Toggles the visibility of the confirmed password.
  VoidCallback _togglePasswordVisibility(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return () =>
        signUpBloc.add(const SignUpEvent.toggleConfirmedPasswordVisibility());
  }

  /// Triggers the confirmed password change event.
  ValueChanged<String> _onConfirmedPasswordChanged(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return (pwd) => signUpBloc.add(SignUpEvent.confirmedPasswordChanged(pwd));
  }
}
