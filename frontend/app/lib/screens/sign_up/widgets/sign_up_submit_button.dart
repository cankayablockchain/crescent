// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_up_bloc.dart';

/// A widget representing the submit button for the sign-up form.
class SignUpSubmitButton extends StatelessWidget {
  /// Constructs a [SignUpSubmitButton].
  const SignUpSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return ElevatedButton(
          onPressed: _onSubmitButtonPressed(context),
          child: const Text('Continue'),
        );
      },
    );
  }

  /// Triggers the form submission event.
  VoidCallback _onSubmitButtonPressed(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return () => signUpBloc.add(const SignUpEvent.formSubmitted());
  }
}
