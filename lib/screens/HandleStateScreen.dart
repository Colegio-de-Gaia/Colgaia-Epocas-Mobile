import 'package:colgaia_convento/models/OccasionModel.dart';
import 'package:colgaia_convento/screens/HomeScreen.dart';
import 'package:colgaia_convento/screens/SplashScreen.dart';
import 'package:colgaia_convento/services/domain/OccasionDomain.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HandleStateScreen extends StatefulWidget {
  const HandleStateScreen({Key key}) : super(key: key);

  @override
  _HandleStateScreenState createState() => _HandleStateScreenState();
}

class _HandleStateScreenState extends State<HandleStateScreen> {
  Occasion _occasion;
  bool _err = false;

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        Duration(seconds: 2),
        () => OccasionRepository()
            .getCurrentOccasion()
            .then((n) => setState(() => _occasion = n))
            .catchError((err) => setState(() => _err = true)));
    return Provider<Occasion>.value(
      value: _occasion,
      child: _occasion == null
          ? SplashScreen(
              error: _err,
            )
          : HomeScreen(),
    );
  }
}
