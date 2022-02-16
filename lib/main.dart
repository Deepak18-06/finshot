import 'package:finshot/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'routes/finshot_routes.dart';

final navigatorKey = Get.key;

void main() {
  runApp(FinshotApp());
}

class FinshotApp extends StatelessWidget {
  const FinshotApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Finshot',
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: routes,
      transitionDuration: Duration(milliseconds: 150),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.orange,
        cursorColor: Colors.orange,
        textTheme: TextTheme(
          headline3: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 45.0,
            color: Colors.orange,
          ),
          button: TextStyle(
            fontFamily: 'OpenSans',
          ),
          subtitle1: TextStyle(fontFamily: 'NotoSans'),
          bodyText2: TextStyle(fontFamily: 'NotoSans'),
        ),
      ),
    );
  }
}
