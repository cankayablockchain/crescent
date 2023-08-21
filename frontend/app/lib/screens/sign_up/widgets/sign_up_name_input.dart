import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_up_bloc.dart';

/// A widget representing the input field for the name during sign-up.
class SignUpNameInput extends StatelessWidget {
  /// Constructs a [SignUpNameInput].
  const SignUpNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: _buildWhen,
      builder: (context, state) {
        return TextFormField(
          decoration: _buildInputDecoration,
          onChanged: _onNameChanged(context),
        );
      },
    );
  }

  /// Builds the input field decoration.
  InputDecoration get _buildInputDecoration {
    return const InputDecoration(labelText: 'Name');
  }

  /// Determines whether the widget should rebuild based on changes in state.
  bool _buildWhen(SignUpState previous, SignUpState current) {
    return previous.name != current.name;
  }

  /// Triggers the name change event.
  ValueChanged<String> _onNameChanged(BuildContext context) {
    final signUpBloc = context.read<SignUpBloc>();
    return (name) => signUpBloc.add(SignUpEvent.nameChanged(name));
  }
}
