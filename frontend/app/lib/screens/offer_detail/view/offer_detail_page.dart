import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/offer_detail_bloc.dart';

part 'offer_detail_layout.dart';

@RoutePage(name: 'OfferDetailRoute')
class OfferDetailPage extends StatelessWidget implements AutoRouteWrapper {
  const OfferDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('	OfferDetail')),
      body: const OfferDetailLayout(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OfferDetailBloc(),
      child: this,
    );
  }
}
