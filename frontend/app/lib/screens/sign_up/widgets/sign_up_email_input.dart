import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_up_bloc.dart';

/// A widget representing the input field for the email during sign-up.
class SignUpEmailInput extends StatelessWidget {
  /// Constructs a [SignUpEmailInput].
  const SignUpEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: _buildWhen,
      builder: (context, state) {
        return TextFormField(
          decoration: _buildInputDecoration,
          keyboardType: TextInputType.emailAddress,
          onChanged: _onEmailChanged(context),
        );
      },
    );
  }

  /// Builds the input field decoration.
  InputDecoration get _buildInputDecoration {
    return const InputDecoration(labelText: 'Email');
  }

  /// Determines whether the widget should rebuild based on changes in state.
  bool _buildWhen(SignUpState previous, SignUpState current) {
    return previous.email != current.email;
  }

  /// Triggers the email change event.
  ValueChanged<String> _onEmailChanged(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return (email) => signUpBloc.add(SignUpEvent.emailChanged(email));
  }
}
