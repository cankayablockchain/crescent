import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/offer_create_bloc.dart';

part 'offer_create_layout.dart';

@RoutePage(name: 'OfferCreateRoute')
class OfferCreatePage extends StatelessWidget implements AutoRouteWrapper {
  const OfferCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Offer Create')),
      body: const OfferCreateLayout(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OfferCreateBloc(),
      child: this,
    );
  }
}
