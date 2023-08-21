import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/injection/injection.dart';
import '../bloc/feed_bloc.dart';

part 'feed_layout.dart';

@RoutePage(name: 'FeedRoute')
class FeedPage extends StatelessWidget implements AutoRouteWrapper {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: FeedLayout(),
      );

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider(
        create: _create,
        child: this,
      );

  FeedBloc _create(BuildContext context) {
    return getIt<FeedBloc>();
  }
}
