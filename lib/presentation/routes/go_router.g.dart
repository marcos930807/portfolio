// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $myHomeRoute,
      $awesomeDialogRoute,
      $gosocketRoute,
      $byBrothersRoute,
      $underDevRoute,
    ];

GoRoute get $myHomeRoute => GoRouteData.$route(
      path: '/',
      factory: $MyHomeRouteExtension._fromState,
    );

extension $MyHomeRouteExtension on MyHomeRoute {
  static MyHomeRoute _fromState(GoRouterState state) => const MyHomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $awesomeDialogRoute => GoRouteData.$route(
      path: '/awesome-dialog',
      factory: $AwesomeDialogRouteExtension._fromState,
    );

extension $AwesomeDialogRouteExtension on AwesomeDialogRoute {
  static AwesomeDialogRoute _fromState(GoRouterState state) =>
      const AwesomeDialogRoute();

  String get location => GoRouteData.$location(
        '/awesome-dialog',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $gosocketRoute => GoRouteData.$route(
      path: '/gosocket-app',
      factory: $GosocketRouteExtension._fromState,
    );

extension $GosocketRouteExtension on GosocketRoute {
  static GosocketRoute _fromState(GoRouterState state) => const GosocketRoute();

  String get location => GoRouteData.$location(
        '/gosocket-app',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $byBrothersRoute => GoRouteData.$route(
      path: '/bybrothers-app',
      factory: $ByBrothersRouteExtension._fromState,
    );

extension $ByBrothersRouteExtension on ByBrothersRoute {
  static ByBrothersRoute _fromState(GoRouterState state) =>
      const ByBrothersRoute();

  String get location => GoRouteData.$location(
        '/bybrothers-app',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $underDevRoute => GoRouteData.$route(
      path: '/under-dev',
      factory: $UnderDevRouteExtension._fromState,
    );

extension $UnderDevRouteExtension on UnderDevRoute {
  static UnderDevRoute _fromState(GoRouterState state) => const UnderDevRoute();

  String get location => GoRouteData.$location(
        '/under-dev',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
