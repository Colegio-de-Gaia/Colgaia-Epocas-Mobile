import 'dart:convert';

import 'package:colgaia_convento/models/OccasionModel.dart';
import 'package:colgaia_convento/services/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class OccasionRepository {
  Future<Occasion> getCurrentOccasion() async {
    var url = BASE_URL + "/api/current/occasion";
    Response response;

    response = await http.get(url, headers: {"Accept": "application/json"});

    if (response.statusCode != 200) throw Exception;

    var data = json.decode(response.body);

    // ? This means that there is no current occasion
    // ? Poor non occasion date :(
    if (data['id'] == -1) return null;

    return Occasion.fromJson(data);
  }

  EventList<Event> getEventList(
      Occasion occasion, Widget icon, BuildContext context) {
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
      _eventList.add(date, Event(date: date, icon: icon, title: "Advento"));
    }

    for (DateTime date in _notActive) {
      _eventList.add(date, Event(date: date, icon: icon, title: "Advento"));
    }
    return _eventList;
  }
}
