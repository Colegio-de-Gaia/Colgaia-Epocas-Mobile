import 'package:flutter/material.dart';

class DayScreen extends StatelessWidget {
  const DayScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/dayImage.jpg'),
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
          )
        ],
      ),
    );
  }
}
