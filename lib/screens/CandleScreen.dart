import 'package:colgaia_convento/local/pt.dart';
import 'package:colgaia_convento/widgets/Typography.dart';
import 'package:flutter/material.dart';

class CandleScreen extends StatelessWidget {
  const CandleScreen({Key key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Velas do Advento"),
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/candleImage.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4),
                            BlendMode.luminosity))),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            buildTitle(context, "1ª Vela do Advento"),
            buildParagraph(CANDLE_ONE),
            buildTitle(context, "2ª Vela do Advento"),
            buildParagraph(CANDLE_TWO),
            buildTitle(context, "3ª Vela do Advento"),
            buildParagraph(CANDLE_THREE),
            buildTitle(context, "4ª Vela do Advento"),
            buildParagraph(CANDLE_FOUR),
            Container(
              height: 50,
            )
          ])),
        ],
      ),
    );
  }
}

class PlatformWidget extends StatelessWidget with PreferredSizeWidget {
  final String name;

  PlatformWidget({this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 17),
          )),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56);
}
