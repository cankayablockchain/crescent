import 'package:app/app/injection/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sign_in_bloc.dart';
import '../widgets/widgets.dart';

part 'sign_in_layout.dart';

@RoutePage(name: 'SignInRoute')
class SignInPage extends StatelessWidget implements AutoRouteWrapper {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInLayout(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: _create,
      child: this,
    );
  }

  SignInBloc _create(BuildContext context) {
    return getIt<SignInBloc>();
  }
}
