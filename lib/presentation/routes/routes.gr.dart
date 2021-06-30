// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/awesome_dialog/awesome_dialog.dart' as _i4;
import '../pages/by_brothers_app/by_brothers_app.dart' as _i6;
import '../pages/gosocket_app/gosocket_app.dart' as _i5;
import '../pages/home/home.dart' as _i3;
import '../pages/proyects/under_dev.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MyHomePageRoute.name: (routeData) => _i1.CustomPage<void>(
        routeData: routeData,
        builder: (_) {
          return const _i3.MyHomePage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false),
    AwesomeDialogPageRoute.name: (routeData) => _i1.CustomPage<void>(
        routeData: routeData,
        builder: (_) {
          return const _i4.AwesomeDialogPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false),
    GosocketPageRoute.name: (routeData) => _i1.CustomPage<void>(
        routeData: routeData,
        builder: (_) {
          return const _i5.GosocketPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false),
    ByBrothersPageRoute.name: (routeData) => _i1.CustomPage<void>(
        routeData: routeData,
        builder: (_) {
          return const _i6.ByBrothersPage();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false),
    UnderDevRoute.name: (routeData) => _i1.CustomPage<void>(
        routeData: routeData,
        builder: (_) {
          return const _i7.UnderDev();
        },
        transitionsBuilder: _i1.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 400,
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MyHomePageRoute.name, path: '/'),
        _i1.RouteConfig(AwesomeDialogPageRoute.name, path: '/awesome_dialog'),
        _i1.RouteConfig(GosocketPageRoute.name, path: '/gosocket_app'),
        _i1.RouteConfig(ByBrothersPageRoute.name, path: '/bybrothers_app'),
        _i1.RouteConfig(UnderDevRoute.name, path: 'under_dev')
      ];
}

class MyHomePageRoute extends _i1.PageRouteInfo {
  const MyHomePageRoute() : super(name, path: '/');

  static const String name = 'MyHomePageRoute';
}

class AwesomeDialogPageRoute extends _i1.PageRouteInfo {
  const AwesomeDialogPageRoute() : super(name, path: '/awesome_dialog');

  static const String name = 'AwesomeDialogPageRoute';
}

class GosocketPageRoute extends _i1.PageRouteInfo {
  const GosocketPageRoute() : super(name, path: '/gosocket_app');

  static const String name = 'GosocketPageRoute';
}

class ByBrothersPageRoute extends _i1.PageRouteInfo {
  const ByBrothersPageRoute() : super(name, path: '/bybrothers_app');

  static const String name = 'ByBrothersPageRoute';
}

class UnderDevRoute extends _i1.PageRouteInfo {
  const UnderDevRoute() : super(name, path: 'under_dev');

  static const String name = 'UnderDevRoute';
}
