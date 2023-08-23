// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app/app/router/empty_router_pages/app_router_page.dart' as _i2;
import 'package:app/app/router/empty_router_pages/auth_router_page.dart' as _i4;
import 'package:app/screens/account/view/account_page.dart' as _i1;
import 'package:app/screens/assistant/view/assistant_page.dart' as _i3;
import 'package:app/screens/governance/view/governance_page.dart' as _i5;
import 'package:app/screens/home/view/home_page.dart' as _i6;
import 'package:app/screens/main/view/main_page.dart' as _i10;
import 'package:app/screens/offer_create/view/offer_create_page.dart' as _i7;
import 'package:app/screens/offer_detail/view/offer_detail_page.dart' as _i8;
import 'package:app/screens/offer_feed/view/offer_feed_page.dart' as _i9;
import 'package:app/screens/onboard/view/onboard_page.dart' as _i11;
import 'package:app/screens/proposal/view/proposal_page.dart' as _i12;
import 'package:app/screens/settings/view/settings_page.dart' as _i13;
import 'package:app/screens/splash/view/splash_page.dart' as _i14;
import 'package:auto_route/auto_route.dart' as _i18;

abstract class $AppRouter extends _i18.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i1.AccountPage()),
      );
    },
    AppRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AppRouterPage(),
      );
    },
    AssistantRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i3.AssistantPage()),
      );
    },
    AuthRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.AuthRouterPage(),
      );
    },
    GovernanceRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i5.GovernancePage()),
      );
    },
    HomeRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i6.HomePage()),
      );
    },
    OfferCreateRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i7.OfferCreatePage()),
      );
    },
    OfferDetailRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i8.OfferDetailPage()),
      );
    },
    OfferFeedRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i9.OfferFeedPage()),
      );
    },
    MainRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i10.OnboardPage()),
      );
    },
    OnboardRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i11.OnboardPage()),
      );
    },
    ProposalRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i12.ProposalPage()),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i13.SettingsPage()),
      );
    },
    SplashRoute.name: (routeData) {
      return _i18.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.WrappedRoute(child: const _i14.SplashPage()),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountPage]
class AccountRoute extends _i18.PageRouteInfo<void> {
  const AccountRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AppRouterPage]
class AppRoute extends _i18.PageRouteInfo<void> {
  const AppRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AppRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AssistantPage]
class AssistantRoute extends _i18.PageRouteInfo<void> {
  const AssistantRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AssistantRoute.name,
          initialChildren: children,
        );

  static const String name = 'AssistantRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i4.AuthRouterPage]
class AuthRoute extends _i18.PageRouteInfo<void> {
  const AuthRoute({List<_i18.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i5.GovernancePage]
class GovernanceRoute extends _i18.PageRouteInfo<void> {
  const GovernanceRoute({List<_i18.PageRouteInfo>? children})
      : super(
          GovernanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'GovernanceRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i18.PageRouteInfo<void> {
  const HomeRoute({List<_i18.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OfferCreatePage]
class OfferCreateRoute extends _i18.PageRouteInfo<void> {
  const OfferCreateRoute({List<_i18.PageRouteInfo>? children})
      : super(
          OfferCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'OfferCreateRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OfferDetailPage]
class OfferDetailRoute extends _i18.PageRouteInfo<void> {
  const OfferDetailRoute({List<_i18.PageRouteInfo>? children})
      : super(
          OfferDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'OfferDetailRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OfferFeedPage]
class OfferFeedRoute extends _i18.PageRouteInfo<void> {
  const OfferFeedRoute({List<_i18.PageRouteInfo>? children})
      : super(
          OfferFeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'OfferFeedRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OnboardPage]
class MainRoute extends _i18.PageRouteInfo<void> {
  const MainRoute({List<_i18.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OnboardPage]
class OnboardRoute extends _i18.PageRouteInfo<void> {
  const OnboardRoute({List<_i18.PageRouteInfo>? children})
      : super(
          OnboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ProposalPage]
class ProposalRoute extends _i18.PageRouteInfo<void> {
  const ProposalRoute({List<_i18.PageRouteInfo>? children})
      : super(
          ProposalRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProposalRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SettingsPage]
class SettingsRoute extends _i18.PageRouteInfo<void> {
  const SettingsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SplashPage]
class SplashRoute extends _i18.PageRouteInfo<void> {
  const SplashRoute({List<_i18.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i15.TokenDetailPage]
class TokenDetailRoute extends _i18.PageRouteInfo<void> {
  const TokenDetailRoute({List<_i18.PageRouteInfo>? children})
      : super(
          TokenDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'TokenDetailRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i16.TokenFeedPage]
class TokenFeedRoute extends _i18.PageRouteInfo<void> {
  const TokenFeedRoute({List<_i18.PageRouteInfo>? children})
      : super(
          TokenFeedRoute.name,
          initialChildren: children,
        );

  static const String name = 'TokenFeedRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}

/// generated route for
/// [_i17.TransactionsPage]
class TransactionsRoute extends _i18.PageRouteInfo<void> {
  const TransactionsRoute({List<_i18.PageRouteInfo>? children})
      : super(
          TransactionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionsRoute';

  static const _i18.PageInfo<void> page = _i18.PageInfo<void>(name);
}
