import 'package:colgaia_convento/widgets/Drawer.dart';
import 'package:flutter/material.dart';

class CreditsScreen extends StatelessWidget {
  const CreditsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          "Créditos".toUpperCase(),
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
                "Programadores envolvidos:",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600,color: Theme.of(context).accentColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "Miguel Ferreira\nRodrigo Ramos\nVasco Martins",
                style: TextStyle(fontSize: 17.0, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Text(
                "Revisores:",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: Theme.of(context).accentColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                "Maria José Costa\nRui Baptista",
                style: TextStyle(fontSize: 17.0, color: Colors.grey),
              ),
            ),
            Expanded(
                child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Text(
                  "Copyright (c) SE3ME Solutions 2019\nColégio de Gaia",
                  style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                
              ),
                          ),
            ),
          ],
        ),
      ),
    );
  }
}
