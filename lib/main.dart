import 'package:advento/routes.dart';
import 'package:advento/theme.dart';
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
