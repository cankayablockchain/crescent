// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_in_bloc.dart';

class SignInPasswordInput extends StatelessWidget {
  const SignInPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: _shouldRebuild,
      builder: (context, state) {
        return TextFormField(
          decoration: _buildInputDecoration(context),
          obscureText: state.showPassword,
          onChanged: _onPasswordChanged(context),
        );
      },
    );
  }

  /// Determines whether the widget should rebuild based on changes in state.
  bool _shouldRebuild(SignInState previous, SignInState current) =>
      previous.showPassword != current.showPassword;

  /// Builds the input field decoration for the password input.
  InputDecoration _buildInputDecoration(BuildContext context) {
    return InputDecoration(
      labelText: 'Password',
      suffixIcon: IconButton(
        onPressed: _togglePasswordVisibility(context),
        icon: const Icon(Icons.visibility),
      ),
    );
  }

  /// Toggles the visibility of the password.
  VoidCallback _togglePasswordVisibility(BuildContext context) {
    final signInBloc = context.read<SignInBloc>();
    return () => signInBloc.add(const SignInEvent.togglePasswordVisibility());
  }

  /// Returns a callback function to handle password changes.
  ValueChanged<String> _onPasswordChanged(BuildContext context) {
    final signInBloc = context.read<SignInBloc>();
    return (password) => signInBloc.add(SignInEvent.passwordChanged(password));
  }
}
