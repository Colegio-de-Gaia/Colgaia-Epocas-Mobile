import 'package:colgaia_convento/local/pt.dart';
import 'package:colgaia_convento/widgets/Drawer.dart';
import 'package:colgaia_convento/widgets/Typography.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text(
          "Ajuda".toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            buildTitle(context, "Como usar a aplicação?",
                alignment: Alignment.topCenter),
            buildParagraph(HOW_TO_USE, align: TextAlign.justify),
          ],
        ),
      ),
    );
  }
}
