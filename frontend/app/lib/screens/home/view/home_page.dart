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
        FeedRoute(),
        AssistantRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return NavigationBar(
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: tabsRouter.setActiveIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(IconlyLight.home),
              selectedIcon: Icon(
                IconlyBold.home,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(IconlyLight.voice2),
              selectedIcon: Icon(
                IconlyBold.voice2,
              ),
              label: 'Assistant',
            ),
            NavigationDestination(
              icon: Icon(IconlyLight.setting),
              selectedIcon: Icon(
                IconlyBold.setting,
              ),
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
