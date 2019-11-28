import 'package:colgaia_convento/models/DayModel.dart';
import 'package:mobx/mobx.dart';

part 'Days.g.dart';

class Days = DayBase with _$Days;

abstract class DayBase with Store {
  @observable
  Day _day;

  @action
  void setDay(Day day) {
    _day = day;
  }
}
