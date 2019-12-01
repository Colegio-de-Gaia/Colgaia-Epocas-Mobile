import 'package:colgaia_convento/widgets/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * With this, we're simply removing the status bar
    // * (status bar is the one where you can see your notifications)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    String ocasiao = "Advento";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Text("Colgaia $ocasiao".toUpperCase()),
        elevation: 0.0,
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Calendar(),
      ),
    );
  }
}

class Calendar extends StatefulWidget {
  const Calendar({
    Key key,
  }) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  final DateTime _startDate = DateTime(2019, 12, 01);
  final DateTime _endDate = DateTime(2019, 12, 17);
  final DateTime _now = DateTime.now();

  List<DateTime> _active = List<DateTime>();
  List<DateTime> _notActive = List<DateTime>();

  EventList<Event> _eventList = EventList<Event>(
    events: {}
  );

  @override
  Widget build(BuildContext context) {

    for(int i = 0; i <= _now.difference(_startDate).inDays; i++) {
      _active.add(_startDate.add(Duration(days: i)));
    }


    for(int i = 0; i <= _endDate.difference(_now).inDays; i++) {
      _notActive.add(_now.add(Duration(days: i)));
    }

    for(int i = 0; i < _active.length; i++) {
      _eventList.add(_active[i], Event(
        date: _active[i],
        icon: _Icon(context, _active[i].day.toString(), true),
        title: "Advento"
      ));
    }

    for(int i = 0; i < _notActive.length; i++) {
      _eventList.add(_notActive[i], Event(
        date: _notActive[i],
        icon: _Icon(context, _notActive[i].day.toString(), false),
        title: "Not Advento"
      ));
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
        }
        //onDayPressed: (DateTime day) => Navigator.of(context).pushNamed('info');,
        );
  }

  static Widget _Icon(BuildContext context, String day, bool active) => Container(
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.all(
        Radius.circular(1000)
      ),
    ),
    child: Center(
      child: Text(
        day,
        style: TextStyle(
          color: Colors.white
        )
      ),
    )
  );
}
