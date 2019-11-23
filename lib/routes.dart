import 'package:colgaia_convento/screens/DayScreen.dart';
import 'package:colgaia_convento/screens/HomeScreen.dart';
import 'package:colgaia_convento/screens/InfoScreen.dart';
import 'package:colgaia_convento/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class FluroRouter {
  static Router router = Router();

  static Handler _dayHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          DayScreen());
  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomeScreen());
  static Handler _splashHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          SplashScreen());
  static Handler _infoHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          InfoScreen());

  static void setupRouter() {
    router.define(
      'day',
      handler: _dayHandler,
    );
    router.define(
      'home',
      handler: _homeHandler,
    );
    router.define(
      'splash',
      handler: _splashHandler,
    );
    router.define(
      'info',
      handler: _infoHandler,
    );
  }
}
