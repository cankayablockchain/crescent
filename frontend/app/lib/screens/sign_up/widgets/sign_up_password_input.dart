import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_up_bloc.dart';

/// A widget representing the input field for the password during sign-up.
class SignUpPasswordInput extends StatelessWidget {
  /// Constructs a [SignUpPasswordInput].
  const SignUpPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: _buildWhen,
      builder: (context, state) {
        return TextFormField(
          decoration: _buildInputDecoration(context),
          obscureText: state.showPassword,
          onChanged: _onPasswordChanged(context),
        );
      },
    );
  }

  /// Builds the input field decoration.
  InputDecoration _buildInputDecoration(BuildContext context) {
    return InputDecoration(
      labelText: 'Password',
      suffixIcon: IconButton(
        onPressed: _togglePasswordVisibility(context),
        icon: const Icon(Icons.visibility),
      ),
    );
  }

  /// Determines whether the widget should rebuild based on changes in state.
  bool _buildWhen(SignUpState previous, SignUpState current) {
    return previous.password != current.password ||
        previous.showPassword != current.showPassword;
  }

  /// Toggles the visibility of the password.
  VoidCallback _togglePasswordVisibility(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return () => signUpBloc.add(const SignUpEvent.togglePasswordVisibility());
  }

  /// Triggers the password change event.
  ValueChanged<String> _onPasswordChanged(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return (password) => signUpBloc.add(SignUpEvent.passwordChanged(password));
  }
}
