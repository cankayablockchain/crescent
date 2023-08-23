import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

/// The [AppRouter] class extends the generated router [AppRouter] provided by AutoRoute.
/// It configures the application's routing system using the AutoRoute package.
/// The [routes] property is overridden to define the different routes in the application.
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// [Splash Route]
        AutoRoute(
          page: SplashRoute.page,
          initial: true,
        ),

        AutoRoute(
          page: MainRoute.page,
          children: [
            /// [Auth Routes]
            AutoRoute(
              page: AuthRoute.page,
              path: 'auth',
              children: [
                // Onboard Route
                AutoRoute(
                  initial: true,
                  page: OnboardRoute.page,
                  path: 'onboard',
                ),
              ],
            ),

            /// [App Routes]
            AutoRoute(
              page: AppRoute.page,
              children: [
                AutoRoute(
                  page: GovernanceRoute.page,
                  path: 'governance',
                ),
                AutoRoute(
                  page: ProposalRoute.page,
                  path: 'proposal',
                ),
                AutoRoute(
                  page: OfferCreateRoute.page,
                  path: 'offer-create',
                ),
                AutoRoute(
                  page: OfferDetailRoute.page,
                  path: 'offer-detail',
                ),
                AutoRoute(
                  page: TokenDetailRoute.page,
                  path: 'token-detail',
                ),
                AutoRoute(
                  page: TransactionsRoute.page,
                  path: 'transactions',
                ),
                AutoRoute(
                  initial: true,
                  page: HomeRoute.page,
                  path: 'home',
                  children: [
                    AutoRoute(
                      page: SettingsRoute.page,
                      path: 'settings',
                    ),
                    AutoRoute(
                      page: AccountRoute.page,
                      path: 'account',
                    ),
                    AutoRoute(
                      page: AssistantRoute.page,
                      path: 'Assistant',
                    ),
                    AutoRoute(
                      page: OfferFeedRoute.page,
                      path: 'offers',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ];
}
