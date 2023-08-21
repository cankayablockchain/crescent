import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection/injection.dart';
import '../../../app/router/app_router.gr.dart';
import '../bloc/onboard_bloc.dart';

part 'onboard_layout.dart';

@RoutePage(name: 'OnboardRoute')
class OnboardPage extends StatelessWidget implements AutoRouteWrapper {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: OnboardLayout(),
      );

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: _create,
        child: this,
      );

  OnboardBloc _create(BuildContext context) {
    return getIt<OnboardBloc>();
  }
}
