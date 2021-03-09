import 'package:dro_health/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dro_health/constants/strings.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'ProximaNova'),
            title: Strings.appName,
            debugShowCheckedModeBanner: false,
            home: Home(),
          )));
}
