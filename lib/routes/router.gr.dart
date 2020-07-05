// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_auto_route/pages/initial_page.dart';
import 'package:flutter_auto_route/pages/second_page.dart';
import 'package:flutter_auto_route/pages/third_page.dart';

class Routes {
  static const String initialPage = '/';
  static const String secondPage = '/second-page';
  static const String thirdPage = '/third-page';
  static const all = <String>{
    initialPage,
    secondPage,
    thirdPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.initialPage, page: InitialPage),
    RouteDef(Routes.secondPage, page: SecondPage),
    RouteDef(Routes.thirdPage, page: ThirdPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    InitialPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => InitialPage(),
        settings: data,
      );
    },
    SecondPage: (RouteData data) {
      var args = data.getArgs<SecondPageArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SecondPage(userId: args.userId),
        settings: data,
        fullscreenDialog: true,
      );
    },
    ThirdPage: (RouteData data) {
      var args = data.getArgs<ThirdPageArguments>(nullOk: false);
      return PageRouteBuilder<bool>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            ThirdPage(userName: args.userName, points: args.points),
        settings: data,
        transitionsBuilder: TransitionsBuilders.zoomIn,
        transitionDuration: const Duration(milliseconds: 200),
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//SecondPage arguments holder class
class SecondPageArguments {
  final String userId;
  SecondPageArguments({@required this.userId});
}

//ThirdPage arguments holder class
class ThirdPageArguments {
  final String userName;
  final int points;
  ThirdPageArguments({@required this.userName, @required this.points});
}
