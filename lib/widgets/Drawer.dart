import 'package:flutter/material.dart';

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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text("Calendário"),
                    trailing: Icon(
                      Icons.calendar_today,
                      color: Theme.of(context).accentColor,
                    ),
                    onTap: () => Navigator.of(context).pushNamed('home'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text("Ajuda"),
                    trailing: Icon(
                      Icons.help,
                      color: Theme.of(context).accentColor,
                    ),
                    onTap: () => Navigator.of(context).pushNamed('help'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text("Sobre a app"),
                    trailing: Icon(
                      Icons.info,
                      color: Theme.of(context).accentColor,
                    ),
                    onTap: () => Navigator.of(context).pushNamed('info'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                  child: Divider(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    title: Text("Créditos"),
                    trailing: Icon(
                      Icons.people,
                      color: Theme.of(context).accentColor,
                    ),
                    onTap: () => Navigator.of(context).pushNamed('credits'),
                  ),
                ),
              ],
            ),
          ),
          // ? In case you're wondering, we created this container to
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
}
