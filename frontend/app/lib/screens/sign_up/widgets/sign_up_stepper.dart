import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_up_bloc.dart';
import 'sign_up_confirmed_password_input.dart';
import 'sign_up_email_input.dart';
import 'sign_up_name_input.dart';
import 'sign_up_password_input.dart';

class SignUpStepper extends StatelessWidget {
  const SignUpStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) => previous.step != current.step,
      builder: (context, state) {
        return _buildStep(state.step);
      },
    );
  }

  Widget _buildStep(SignStep step) {
    switch (step) {
      case SignStep.name:
        return const SignUpNameInput();
      case SignStep.email:
        return const SignUpEmailInput();
      case SignStep.password:
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SignUpPasswordInput(),
            SizedBox(height: 16),
            SignUpConfirmedPasswordInput(),
          ],
        );
    }
  }
}
