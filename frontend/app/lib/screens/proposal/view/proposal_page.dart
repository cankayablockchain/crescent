import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/proposal_bloc.dart';

part 'proposal_layout.dart';

@RoutePage(name: 'ProposalRoute')
class ProposalPage extends StatelessWidget implements AutoRouteWrapper {
  const ProposalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('	Proposal')),
      body: const ProposalLayout(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ProposalBloc(),
      child: this,
    );
  }
}
