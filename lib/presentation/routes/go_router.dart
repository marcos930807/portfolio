import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_portfolio/presentation/pages/awesome_dialog/awesome_dialog.dart';
import 'package:web_portfolio/presentation/pages/gosocket_app/gosocket_app.dart';
import 'package:web_portfolio/presentation/pages/home/home.dart';
import 'package:web_portfolio/presentation/pages/proyects/under_dev.dart';

import '../pages/by_brothers_app/by_brothers_app.dart';

part 'go_router.g.dart';

GoRouter getAppRouter() => GoRouter(
      // log diagnostic info for your routes
      debugLogDiagnostics: kDebugMode,
      initialLocation: const MyHomeRoute().location,
      routes: <GoRoute>[
        ...$appRoutes,
      ],
      // use the navigatorBuilder to keep the SharedScaffold from being animated
      // as new pages as shown; wrapping that in single-page Navigator at the
      // root provides an Overlay needed for the adaptive navigation scaffold and
      // a root Navigator to show the About box
      navigatorBuilder:
          (BuildContext context, GoRouterState state, Widget child) =>
              Navigator(
        onPopPage: (Route<dynamic> route, dynamic result) {
          route.didPop(result);
          return false; // don't pop the single page on the root navigator
        },
        pages: <Page<dynamic>>[
          //Check if is inside Login route

          MaterialPage<void>(child: child),
        ],
      ),
      // Redirect to the login page if the user is not logged in
      redirect: (state) {
        // No need to redirect at all
        return null;
      },
      // refreshListenable: GoRouterRefreshStream(_authCubit.stream),
    );

///Route for [MyHomePage] page
@TypedGoRoute<MyHomeRoute>(
  path: '/',
)
class MyHomeRoute extends GoRouteData {
  const MyHomeRoute();
  @override
  Widget build(BuildContext context) => const MyHomePage();
}

///Route for [AwesomeDialogPage] page
@TypedGoRoute<AwesomeDialogRoute>(
  path: '/awesome-dialog',
)
class AwesomeDialogRoute extends GoRouteData {
  const AwesomeDialogRoute();
  @override
  Widget build(BuildContext context) => const AwesomeDialogPage();
}

///Route for [GosocketPage] page
@TypedGoRoute<GosocketRoute>(
  path: '/gosocket-app',
)
class GosocketRoute extends GoRouteData {
  const GosocketRoute();
  @override
  Widget build(BuildContext context) => const GosocketPage();
}

///Route for [ByBrothersPage] page
@TypedGoRoute<ByBrothersRoute>(
  path: '/bybrothers-app',
)
class ByBrothersRoute extends GoRouteData {
  const ByBrothersRoute();
  @override
  Widget build(BuildContext context) => const ByBrothersPage();
}

///Route for [UnderDev] page
@TypedGoRoute<UnderDevRoute>(
  path: '/under-dev',
)
class UnderDevRoute extends GoRouteData {
  const UnderDevRoute();
  @override
  Widget build(BuildContext context) => const UnderDev();
}
