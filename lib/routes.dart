import 'package:colgaia_convento/screens/CandleScreen.dart';
import 'package:colgaia_convento/screens/CreditsScreen.dart';
import 'package:colgaia_convento/screens/DayScreen.dart';
import 'package:colgaia_convento/screens/HandleStateScreen.dart';
import 'package:colgaia_convento/screens/HelpScreen.dart';
import 'package:colgaia_convento/screens/HomeScreen.dart';
import 'package:colgaia_convento/screens/InfoScreen.dart';
import 'package:colgaia_convento/screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class FluroRouter {
  static Router router = Router();

  static Handler _dayHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          DayScreen(id: params['id'][0]));
  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HomeScreen());
  static Handler _splashHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          SplashScreen());
  static Handler _infoHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          InfoScreen());
  static Handler _candleHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CandleScreen());
  static Handler _creditsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          CreditsScreen());
  static Handler _helpHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HelpScreen());
  static Handler _waitHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          HandleStateScreen());

  static void setupRouter() {
    router.define(
      'day/:id',
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
    router.define(
      'candle',
      handler: _candleHandler,
    );
    router.define(
      'credits',
      handler: _creditsHandler,
    );
    router.define(
      'help',
      handler: _helpHandler,
    );
    router.define(
      'wait',
      handler: _waitHandler,
    );
  }
}
