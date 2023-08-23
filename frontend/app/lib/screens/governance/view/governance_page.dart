import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/governance_bloc.dart';

part 'governance_layout.dart';

@RoutePage(name: 'GovernanceRoute')
class GovernancePage extends StatelessWidget implements AutoRouteWrapper {
  const GovernancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Governance')),
      body: const GovernanceLayout(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => GovernanceBloc(),
      child: this,
    );
  }
}
