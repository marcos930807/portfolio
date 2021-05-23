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
    MyHomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyHomePageRouteArgs>(
              orElse: () => const MyHomePageRouteArgs());
          return _i3.MyHomePage(key: args.key);
        }),
    AwesomeDialogPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.AwesomeDialogPage();
        }),
    UnderDevRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.UnderDev();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MyHomePageRoute.name, path: '/'),
        _i1.RouteConfig(AwesomeDialogPageRoute.name,
            path: '/awesome-dialog-page'),
        _i1.RouteConfig(UnderDevRoute.name, path: '/under-dev')
      ];
}

class MyHomePageRoute extends _i1.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({_i2.Key? key})
      : super(name, path: '/', args: MyHomePageRouteArgs(key: key));

  static const String name = 'MyHomePageRoute';
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({this.key});

  final _i2.Key? key;
}

class AwesomeDialogPageRoute extends _i1.PageRouteInfo {
  const AwesomeDialogPageRoute() : super(name, path: '/awesome-dialog-page');

  static const String name = 'AwesomeDialogPageRoute';
}

class UnderDevRoute extends _i1.PageRouteInfo {
  const UnderDevRoute() : super(name, path: '/under-dev');

  static const String name = 'UnderDevRoute';
}
