import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dro_health/constants/strings.dart';
import 'package:dro_health/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MaterialApp(
            title: Strings.appName,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: (settings) {
              return MaterialPageRoute(
                  builder: (BuildContext context) => makeRoute(
                      context: context,
                      routeName: settings.name,
                      arguments: settings.arguments),
                  maintainState: true,
                  fullscreenDialog: false);
            },
          )));
}
