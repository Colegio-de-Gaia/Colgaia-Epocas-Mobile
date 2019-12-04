import 'package:colgaia_convento/routes.dart';
import 'package:colgaia_convento/screens/DayScreen.dart';
import 'package:colgaia_convento/screens/HomeScreen.dart';
import 'package:colgaia_convento/screens/InfoScreen.dart';
import 'package:colgaia_convento/screens/SplashScreen.dart';
import 'package:colgaia_convento/theme.dart';
import 'package:flutter/material.dart';

void main() {
  FluroRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: adventoThemeLight(),
      initialRoute: 'wait',
      onGenerateRoute: FluroRouter.router.generator,
    );
  }
}
