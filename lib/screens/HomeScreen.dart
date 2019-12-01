import 'dart:convert';

import 'package:colgaia_convento/models/OccasionModel.dart';
import 'package:colgaia_convento/services/Occasions.dart';
import 'package:colgaia_convento/services/domain/domain.dart';
import 'package:colgaia_convento/widgets/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Occasion occasion;

  @override
  void initState() {
    super.initState();

    getOccasion().then((newoccasion) => setState(() => {occasion = newoccasion}));
  }

  Future<Occasion> getOccasion() async {
    var url = BASE_URL + "/api/current/occasion";

    Response response =
        await http.get(url, headers: {"Accept": "application/json"});

    if (response.statusCode != 200) return null;

    var data = json.decode(response.body);

    // ? This means that there is no current occasion
    // ? Poor non occasion date :(
    if (data['id'] == -1) return null;

    return Occasion.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    // * With this, we're simply removing the status bar
    // * (status bar is the one where you can see your notifications)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: occasion != null ? Text(("Colgaia ${occasion.name}").toUpperCase()) : Text(""),
        elevation: 0.0,
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: occasion != null ? Calendar(
          occasion: occasion,
        ) : Container(),
      ),
    );
  }
}

class Calendar extends StatelessWidget {
  final Occasion occasion;

  Calendar({this.occasion});


  @override
  Widget build(BuildContext context) {

  final DateTime _startDate = occasion.startAt;
  final DateTime _endDate = occasion.endAt;
  final DateTime _now = DateTime.now();

  List<DateTime> _active = List<DateTime>();
  List<DateTime> _notActive = List<DateTime>();

  EventList<Event> _eventList = EventList<Event>(events: {});

    for (int i = 0; i <= _now.difference(_startDate).inDays; i++) {
      _active.add(_startDate.add(Duration(days: i)));
    }

    for (int i = 0; i <= _endDate.difference(_now).inDays; i++) {
      _notActive.add(_now.add(Duration(days: i)));
    }

    for (int i = 0; i < _active.length; i++) {
      _eventList.add(
          _active[i],
          Event(
              date: _active[i],
              icon: _Icon(context, _active[i].day.toString(), true),
              title: "Advento"));
    }

    for (int i = 0; i < _notActive.length; i++) {
      _eventList.add(
          _notActive[i],
          Event(
              date: _notActive[i],
              icon: _Icon(context, _notActive[i].day.toString(), false),
              title: "Not Advento"));
    }

    return CalendarCarousel(
      weekFormat: false,
      weekendTextStyle: TextStyle(
        color: Colors.black,
      ),
      markedDatesMap: _eventList,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 1,
      markedDateMoreShowTotal: null,
      markedDateIconBuilder: (event) {
        return event.icon;
      },
      selectedDayButtonColor: Theme.of(context).primaryColor,
      todayButtonColor: Theme.of(context).primaryColor,
      headerTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 25.0,
      ),
      weekdayTextStyle: TextStyle(
        color: Theme.of(context).primaryColor,
      ),
      iconColor: Colors.black,
      onDayPressed: (DateTime date, List<Event> events) {
        Navigator.of(context).pushNamed('day');
      },
      minSelectedDate: _startDate,
      maxSelectedDate: _endDate,
    );
  }

  static Widget _Icon(BuildContext context, String day, bool active) =>
      Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(1000)),
          ),
          child: Center(
            child: Text(day, style: TextStyle(color: Colors.white)),
          ));
}
