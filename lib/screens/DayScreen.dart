import 'package:flutter/material.dart';

class DayScreen extends StatelessWidget {
  const DayScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ? We'll be using this to define the stroke
    // ? showing the day text
    double strokeSize = 2.0;

    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/dayImage.jpg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    child: Text(
                      "Dia 5",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w800,
                          shadows: [
                            Shadow(
                              // bottomLeft
                              offset: Offset(-strokeSize, -strokeSize),
                              color: Theme.of(context).accentColor,
                            ),
                            Shadow(
                              // bottomRight
                              offset: Offset(strokeSize, -strokeSize),
                              color: Theme.of(context).accentColor,
                            ),
                            Shadow(
                              // topRight
                              offset: Offset(strokeSize, strokeSize),
                              color: Theme.of(context).accentColor,
                            ),
                            Shadow(
                              // topLeft
                              offset: Offset(-strokeSize, strokeSize),
                              color: Theme.of(context).accentColor,
                            ),
                          ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Align(
                      child: IconButton(
                        icon: Icon(Icons.close),
                        color: Colors.white,
                        onPressed: () => Navigator.pop(context),
                        iconSize: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
            child: Text(
              "Mateus 7, 21.24-27",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).accentColor,
                fontSize: 15.0,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Text(
              '" Caiu a chuva, vieram as torrentes, sopraram os ventos... mas aquela casa não caia. "',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
            child: Text(
              "Reflexão",
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 35.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Text(
              "A vida está cheia de imprevistos. \nAlguns, bem mais sérios do que uma tempestade ou uma ventania. \nOs amigos falham-nos, \na nossa força de vontade entra em crise, \nperdemos o entusiasmo com o que ontem sonhavamos. E parece que a vida toda de desmorona.",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
            child: Text(
              "Oração",
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 35.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
            child: Text(
              "Quando construo a minha vida \nem cima da tua Palavra, \nnão há tempestade que me deite abaixo. \nEm Ti, no teu amor sem limites, \nencontro a força e luz \npara superar todos os desânimos.",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}
