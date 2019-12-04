import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                _tab(context, "Velas", MaterialCommunityIcons.candle, "candle"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Divider(),
                ),
                _tab(context, "Ajuda", Icons.help, "help"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Divider(),
                ),
                _tab(context, "Sobre a aplicação", Icons.info, "info"),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Divider(),
                ),
                _tab(context, "Créditos", Icons.people, "credits"),
              ],
            ),
          ),
          // ? In case you're wondering, we've created this container to
          // ? put the version in the bottom left
          Container(
            // This align moves the children to the bottom
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              // This container holds all the children that will be aligned
              // on the bottom and should not scroll with the above ListView
              child: Container(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Versão 1.0',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tab(
      BuildContext context, String title, IconData iconData, String route) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        title: Text(title),
        trailing: Icon(
          iconData,
          color: Theme.of(context).accentColor,
        ),
        onTap: () => Navigator.of(context).popAndPushNamed(route),
      ),
    );
  }
}
