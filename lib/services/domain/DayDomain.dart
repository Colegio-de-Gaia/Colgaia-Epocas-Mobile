import 'package:colgaia_convento/models/DayModel.dart';
import 'package:dio/dio.dart';

class DayRepository {
  Future<Day> getDay(DateTime date) async {
    try {
      // ? Let's make the request
      Response response = await Dio().get("http://localhost:3333/api/days");
      Day day = Day.fromJson(response.data);

      return day;
    } catch (e) {
      print(e);
    }
  }
}
