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
      // ? As the Advento's logo background is #144D2A
      // ? we set the screen background color as #144D2A
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(top: 30.0),
              height: 70.0,
              width: 70,
              child: Image(
                image: AssetImage('assets/images/logoColgaia.png'),
              ),
            ),
          ),
          Padding(
            // ? We use .fromLTRB so we can resize the image
            // ? and at the same time we had the padding
            padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
            child: Image(
              image: AssetImage('assets/images/logoConvento.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50.0),
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xffFFFFFF)),
            ),
          ),
        ],
      ),
    );
  }
}
