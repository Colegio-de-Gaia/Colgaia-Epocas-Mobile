import 'package:colgaia_convento/models/OccasionModel.dart';
import 'package:colgaia_convento/services/Occasions.dart';
import 'package:dio/dio.dart';

class OccasionRepository {
  Future<Occasion> getOccasion() async {
    try {
      // ? Let's make the request
      Response response = await Dio().get("http://localhost:3333/occasions");
      Occasion occasion = Occasion.fromJson(response.data);

      return occasion;
    } catch (e) {
      print(e);
    }
  }
}
