import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/router/app_router.gr.dart';
import '../bloc/splash_bloc.dart';

part 'splash_layout.dart';

/// A route page representing the splash screen.
@RoutePage(name: 'SplashRoute')
class SplashPage extends StatelessWidget implements AutoRouteWrapper {
  /// Creates a [SplashPage].
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashLayout(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: _create,
      child: this,
    );
  }

  /// Creates an instance of [SplashBloc], adds the [SplashEvent.appStarted()] event,
  /// and returns the created [SplashBloc] instance.
  SplashBloc _create(BuildContext context) {
    return SplashBloc()..add(const SplashEvent.appStarted());
  }
}
