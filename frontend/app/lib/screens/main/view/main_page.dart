import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection/injection.dart';
import '../../../app/router/app_router.gr.dart';
import '../bloc/main_bloc.dart';

@RoutePage(name: 'MainRoute')
class OnboardPage extends StatelessWidget implements AutoRouteWrapper {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) => BlocListener<MainBloc, MainState>(
        listener: (context, state) => state.mapOrNull(
          authenticated: (_) {
            return context.router.replaceAll([const HomeRoute()]);
          },
          unauthenticated: (_) {
            return context.router.replaceAll([const AuthRoute()]);
          },
        ),
        child: const AutoRouter(),
      );

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: _create,
        child: this,
      );

  MainBloc _create(BuildContext context) {
    return getIt<MainBloc>()..add(const MainEvent.started());
  }
}
