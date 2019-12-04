import 'dart:convert';

import 'package:colgaia_convento/models/DayModel.dart';
import 'package:colgaia_convento/services/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class DayScreen extends StatefulWidget {
  final String id;

  DayScreen({this.id});

  @override
  _DayScreenState createState() => _DayScreenState(id: id);
}

class _DayScreenState extends State<DayScreen> {
  final String id;
  Day day;

  _DayScreenState({this.id});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDay().then((newday) => setState(() => {day = newday}));
    print(this.id);
    print("entrou");
  }

  Future<Day> getDay() async {
    var url = BASE_URL + "/api/days/" + this.id;

    Response response =
        await http.get(url, headers: {"Accept": "application/json"});

    if (response.statusCode != 200) return null;

    var data = json.decode(response.body);

    return Day.fromJson(data);
  }

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
                image: NetworkImage("https://picsum.photos/1280/720"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                    child: Text(
                      day != null ? "Dia ${day.id}" : "Dia X",
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
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Text(
              day != null
                  ? day.sentence
                  : '" Caiu a chuva, vieram as torrentes, sopraram os ventos... mas aquela casa não caia. "',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 0.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                day != null ? day.sentenceAuthor : "Mateus 7, 21.24-27",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).accentColor,
                  fontSize: 15.0,
                ),
              ),
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
              day != null
                  ? day.reflection
                  : "A vida está cheia de imprevistos. \nAlguns, bem mais sérios do que uma tempestade ou uma ventania. \nOs amigos falham-nos, \na nossa força de vontade entra em crise, \nperdemos o entusiasmo com o que ontem sonhavamos. E parece que a vida toda de desmorona.",
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
              day != null
                  ? day.pray
                  : "Quando construo a minha vida \nem cima da tua Palavra, \nnão há tempestade que me deite abaixo. \nEm Ti, no teu amor sem limites, \nencontro a força e luz \npara superar todos os desânimos.",
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
