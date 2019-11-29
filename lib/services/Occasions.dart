import 'package:colgaia_convento/models/OccasionModel.dart';
import 'package:mobx/mobx.dart';

part 'Occasions.g.dart';

class Occasions = OccasionBase with _$Occasions;

abstract class OccasionBase with Store {
  @observable
  Occasion _occasion;

  @action
  void setOccasion(Occasion occasion) {
    _occasion = occasion;
  }
}
