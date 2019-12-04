import 'package:flutter/material.dart';

Widget buildParagraph(String text, {TextAlign align = TextAlign.start}) {
  return Container(
    margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 17.0,
      ),
      textAlign: align,
    ),
  );
}

Widget buildTitle(BuildContext context, String text,
    {Alignment alignment = Alignment.topLeft}) {
  return Container(
    alignment: alignment,
    margin: EdgeInsets.fromLTRB(20.0, 40.0, 0.0, 0.0),
    child: Text(
      text,
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontSize: 25.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}
