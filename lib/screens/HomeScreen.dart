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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            color: Colors.white,
            onPressed: () => Navigator.of(context).pushNamed('info'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: CalendarCarousel(
            weekFormat: false,
            weekendTextStyle: TextStyle(
              color: Colors.black,
            ),
            selectedDayButtonColor: Theme.of(context).primaryColor,
            todayButtonColor: Theme.of(context).accentColor,
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
            ),
      ),
    );
  }
}
