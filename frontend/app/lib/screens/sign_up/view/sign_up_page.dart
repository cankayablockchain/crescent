import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection/injection.dart';
import '../bloc/sign_up_bloc.dart';
import '../widgets/sign_up_header.dart';
import '../widgets/sign_up_stepper.dart';
import '../widgets/sign_up_submit_button.dart';

part 'sign_up_layout.dart';

/// A route page representing the sign-up screen.
@RoutePage(name: 'SignUpRoute')
class SignUpPage extends StatelessWidget implements AutoRouteWrapper {
  /// Constructs a [SignUpPage].
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpLayout(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: _createSignUpBloc,
      child: this,
    );
  }

  /// Creates an instance of [SignUpBloc] using dependency injection.
  SignUpBloc _createSignUpBloc(BuildContext context) {
    return getIt<SignUpBloc>();
  }
}
