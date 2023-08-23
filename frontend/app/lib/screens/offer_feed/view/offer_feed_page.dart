import 'package:app/app/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/offer_feed_bloc.dart';
import '../widgets/offer_tile.dart';

part 'offer_feed_layout.dart';

@RoutePage(name: 'OfferFeedRoute')
class OfferFeedPage extends StatelessWidget implements AutoRouteWrapper {
  const OfferFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OfferFeedLayout(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OfferFeedBloc(),
      child: this,
    );
  }
}
