import 'dart:convert';

import 'package:colgaia_convento/models/DayModel.dart';
import 'package:colgaia_convento/services/domain/domain.dart';
import 'package:colgaia_convento/widgets/Typography.dart';
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
    super.initState();
    getDay().then((newday) => setState(() => day = newday));
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
      body: day == null
          ? Center(child: CircularProgressIndicator())
          : CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  bottom: day != null
                      ? PlatformWidget(
                          name: day.photoName,
                        )
                      : PlatformWidget(
                          name: "",
                        ),
                  title: Text(
                    day != null ? "Dia ${day.date.day}" : "",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
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
                  pinned: false,
                  expandedHeight: 300.0,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(day.url),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.luminosity))),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                      child: Text(
                        "\"" + day.sentence + "\"",
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
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
                          "- " + day.sentenceAuthor,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).accentColor,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    buildTitle(context, "Reflexão"),
                    buildParagraph(day.reflection),
                    buildTitle(context, "Oração"),
                    buildParagraph(day.pray),
                    Container(
                      height: 50,
                    )
                  ]),
                )
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
