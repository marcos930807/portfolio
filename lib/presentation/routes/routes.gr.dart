// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/awesome_dialog/awesome_dialog.dart';
import '../pages/home/home.dart';
import '../pages/proyects/under_dev.dart';

class Routes {
  static const String myHomePage = '/';
  static const String awesomeDialogPage = '/awesome-dialog-page';
  static const String underDev = '/under-dev';
  static const all = <String>{
    myHomePage,
    awesomeDialogPage,
    underDev,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.myHomePage, page: MyHomePage),
    RouteDef(Routes.awesomeDialogPage, page: AwesomeDialogPage),
    RouteDef(Routes.underDev, page: UnderDev),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    MyHomePage: (data) {
      final args = data.getArgs<MyHomePageArguments>(
        orElse: () => MyHomePageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => MyHomePage(key: args.key),
        settings: data,
      );
    },
    AwesomeDialogPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AwesomeDialogPage(),
        settings: data,
      );
    },
    UnderDev: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const UnderDev(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MyHomePage arguments holder class
class MyHomePageArguments {
  final Key key;
  MyHomePageArguments({this.key});
}
