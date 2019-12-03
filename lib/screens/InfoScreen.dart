import 'package:colgaia_convento/widgets/Drawer.dart';
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
      drawer: DrawerWidget(),
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
                "O Advento é o primeiro tempo do Ano litúrgico, o qual antecede o Natal. Para os cristãos, é um tempo de preparação e alegria, de expectativa, onde os fiéis, esperando o Nascimento de Jesus Cristo , vivem o arrependimento e promovem a fraternidade e a Paz. No calendário religioso este tempo corresponde às quatro semanas que antecedem o Natal.",
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
