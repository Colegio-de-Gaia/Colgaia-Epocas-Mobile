import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * With this, we're simply removing the status bar
    // * (status bar is the one where you can see your notifications)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundImage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image(
                  image: AssetImage('assets/images/logoColgaia.png'),
                  height: 70.0,
                ),
              ),
            ),
            Padding(
              // ? We use .fromLTRB so we can resize the image
              // ? and at the same time we had the padding
              padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
              child: Image(
                image: AssetImage('assets/images/logoConvento.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0xffFFFFFF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
