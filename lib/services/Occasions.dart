import 'package:colgaia_convento/models/OccasionModel.dart';
import 'package:colgaia_convento/services/domain/OccasionDomain.dart';
import 'package:mobx/mobx.dart';

part 'Occasions.g.dart';

class Occasions = OccasionBase with _$Occasions;

abstract class OccasionBase with Store {
  @observable
  Occasion occasion;

  @action
  void setOccasion(Occasion occasion) {
    this.occasion = occasion;
  }

  @action
  void getCurrentOccasion() {
    OccasionRepository().getCurrentOccasion().then((occasion) => {
     this.occasion = occasion
    });
  }
}
