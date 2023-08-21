import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection/injection.dart';
import '../bloc/settings_bloc.dart';

part 'settings_layout.dart';

@RoutePage(name: 'SettingsRoute')
class SettingsPage extends StatelessWidget implements AutoRouteWrapper {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Settings')),
        body: const SettingsLayout(),
      );

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: _create,
        child: this,
      );

  SettingsBloc _create(BuildContext context) {
    return getIt<SettingsBloc>();
  }
}
