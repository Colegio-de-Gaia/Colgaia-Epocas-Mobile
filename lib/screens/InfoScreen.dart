import 'package:colgaia_convento/local/pt.dart';
import 'package:colgaia_convento/widgets/Drawer.dart';
import 'package:colgaia_convento/widgets/Typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * With this, we're simply removing the status bar
    // * (status bar is the one where you can see your notifications)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          "Sobre".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            buildTitle(
              context,
              "O que é o Advento?".toUpperCase(),
              alignment: Alignment.topCenter,
            ),
            buildParagraph(ADVENTO, align: TextAlign.justify),
          ],
        ),
      ),
    );
  }
}
