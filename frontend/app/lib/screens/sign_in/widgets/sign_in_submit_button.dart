import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_in_bloc.dart';

class SignInSubmitButton extends StatelessWidget {
  const SignInSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: _buildWhen,
      builder: (context, state) {
        return ElevatedButton(
          onPressed: _onPreesed(context),
          child: const Text('Sign In'),
        );
      },
    );
  }

  bool _buildWhen(SignInState previous, SignInState current) {
    return previous.status != current.status;
  }

  VoidCallback _onPreesed(BuildContext context) {
    final signInBloc = context.read<SignInBloc>();
    return () => signInBloc.add(const SignInEvent.formSubmitted());
  }
}
