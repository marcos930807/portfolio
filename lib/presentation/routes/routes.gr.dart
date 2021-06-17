// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/awesome_dialog/awesome_dialog.dart' as _i4;
import '../pages/home/home.dart' as _i3;
import '../pages/proyects/under_dev.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MyHomePageRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i3.MyHomePage();
        }),
    AwesomeDialogPageRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i4.AwesomeDialogPage();
        }),
    UnderDevRoute.name: (routeData) => _i1.MaterialPageX<void>(
        routeData: routeData,
        builder: (_) {
          return const _i5.UnderDev();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MyHomePageRoute.name, path: '/'),
        _i1.RouteConfig(AwesomeDialogPageRoute.name, path: '/awesome_dialog'),
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

class UnderDevRoute extends _i1.PageRouteInfo {
  const UnderDevRoute() : super(name, path: 'under_dev');

  static const String name = 'UnderDevRoute';
}
