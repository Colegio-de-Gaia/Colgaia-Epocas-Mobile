import 'package:flutter/material.dart';

class CandleScreen extends StatelessWidget {
  const CandleScreen({Key key}) : super(key: key);

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
                         
        ],
      ),
    );
  }
}
