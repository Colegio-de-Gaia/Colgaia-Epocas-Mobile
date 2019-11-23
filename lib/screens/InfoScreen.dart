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
        title: Text("Sobre".toUpperCase()),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "O que é o Advento?".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
              child: Text(
                "O Advento é aquela cena onde celebramos aquela parte do ano e tal e depois vai desde 1 de dezembro a 25 do mesmo mesmo. Obrigado. Btw, o Padre não sabe o advento.",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
