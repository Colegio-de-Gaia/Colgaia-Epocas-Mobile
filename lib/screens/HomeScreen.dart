import 'package:advento/models/DayModel.dart';
import 'package:advento/models/OccasionModel.dart';
import 'package:advento/screens/SplashScreen.dart';
import 'package:advento/widgets/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:provider/provider.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    // * With this, we're simply removing the status bar
    // * (status bar is the one where you can see your notifications)

    occasion = Provider.of<Occasion>(context);

    return occasion == null
        ? SplashScreen()
        : Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              centerTitle: true,
              title: occasion != null
                  ? Text(("Colgaia ${occasion.name}").toUpperCase())
                  : Text(""),
              elevation: 0.0,
            ),
            drawer: DrawerWidget(),
            body: SingleChildScrollView(
                child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                children: <Widget>[
                  occasion == null
                      ? Container()
                      : Expanded(
                          child: Calendar(
                            occasion: occasion,
                          ),
                        ),
                ],
              ),
            )),
          );
  }
}

class Calendar extends StatelessWidget {
  final Occasion occasion;

  Calendar({this.occasion});

  @override
  Widget build(BuildContext context) {
    DateTime _startDate = occasion.startAt;
    DateTime _endDate = occasion.endAt;
    DateTime _now = DateTime.now();

    List<DateTime> _active = [];
    List<DateTime> _notActive = [];

    EventList<Event> _eventList = EventList<Event>(events: {});

    for (int i = 0; i <= _now.difference(_startDate).inDays; i++) {
      _active.add(_startDate.add(Duration(days: i)));
    }

    for (int i = 0; i <= _endDate.difference(_now).inDays; i++) {
      _notActive.add(_now.add(Duration(days: i)));
    }

    for (DateTime date in _active) {
      _eventList.add(
          date,
          new Event(
              date: date,
              dot: _icon(context, date.day.toString(), true),
              title: "Quaresma"));
    }

    for (DateTime date in _notActive) {
      _eventList.add(
          date,
          new Event(
              date: date,
              icon: _icon(context, date.day.toString(), true),
              title: "Quaresma"));
    }

    return CalendarCarousel<Event>(
      weekFormat: false,
      weekendTextStyle: TextStyle(
        color: Colors.black,
      ),
      selectedDayButtonColor: Theme.of(context).primaryColor,
      todayButtonColor: Theme.of(context).accentColor,
      onDayLongPressed: (datetime) => {},
      headerTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 25.0,
      ),
      weekdayTextStyle: TextStyle(
        color: Theme.of(context).primaryColor,
      ),
      iconColor: Colors.black,
      onDayPressed: (DateTime date, List<Event> events) {
        Day day = occasion.getCurrentDay(date);
        if (day != null)
          Navigator.of(context).pushNamed('day/${day.id.toString()}');
      },
      minSelectedDate: _startDate,
      maxSelectedDate: _endDate,
      showIconBehindDayText: true,
      markedDatesMap: _eventList,
      markedDateCustomTextStyle: TextStyle(color: Colors.white),
      markedDateShowIcon: true,
      markedDateIconMaxShown: 4,
      markedDateMoreShowTotal: null,
      markedDateIconBuilder: (event) => event.dot,
    );
  }

  static Widget _icon(BuildContext context, String day, bool active) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(Radius.circular(1000)),
        ),
        child: Icon(
          Icons.person,
          color: Colors.black,
        ));
  }
}
