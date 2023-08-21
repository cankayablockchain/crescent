import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_in_bloc.dart';

class SignInEmailInput extends StatelessWidget {
  const SignInEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: _shouldRebuild,
      builder: (context, state) {
        return TextFormField(
          decoration: _buildInputDecoration(),
          keyboardType: TextInputType.emailAddress,
          onChanged: _onEmailChanged(context),
        );
      },
    );
  }

  /// Determines whether the widget should rebuild based on changes in state.
  bool _shouldRebuild(SignInState previous, SignInState current) =>
      previous.email != current.email;

  /// Builds the input field decoration for the email input.
  InputDecoration _buildInputDecoration() {
    return const InputDecoration(
      labelText: 'Email',
    );
  }

  ValueChanged<String> _onEmailChanged(BuildContext context) {
    final signUpBloc = context.read<SignInBloc>();
    return (email) => signUpBloc.add(SignInEvent.emailChanged(email));
  }
}
