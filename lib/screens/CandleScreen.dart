import 'package:flutter/material.dart';

class CandleScreen extends StatelessWidget {
  const CandleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/candleImage.jpg'),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                child: Align(
                  alignment: Alignment.topRight,
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
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
            child: Text(
              "1ª vela do Advento",
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
              ' Os maias formavam uma civilização que foi desenvolvida na região conhecida como Mesoamérica e que ficava localizada na América Central, em sua maior parte, e América do Norte, apenas em parte do território em que hoje está localizado o México.',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 25.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
