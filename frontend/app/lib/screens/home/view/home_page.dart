import 'package:app/app/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../app/injection/injection.dart';
import '../bloc/home_bloc.dart';

@RoutePage(name: 'HomeRoute')
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        AccountRoute(),
        OfferFeedRoute(),
        AssistantRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(IconlyLight.profile),
              selectedIcon: Icon(IconlyBold.profile),
              label: 'Account',
            ),
            NavigationDestination(
              icon: Icon(IconlyLight.paper),
              selectedIcon: Icon(IconlyBold.paper),
              label: 'Offers',
            ),
            NavigationDestination(
              icon: Icon(IconlyLight.chat),
              selectedIcon: Icon(IconlyBold.chat),
              label: 'Assistant',
            ),
            NavigationDestination(
              icon: Icon(IconlyLight.setting),
              selectedIcon: Icon(IconlyBold.setting),
              label: 'Settings',
            ),
          ],
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: _create,
      child: this,
    );
  }

  HomeBloc _create(BuildContext context) {
    return getIt<HomeBloc>();
  }
}
