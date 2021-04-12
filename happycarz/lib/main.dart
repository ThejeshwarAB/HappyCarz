import 'package:flutter/material.dart';
// import 'package:happycarz/views/login.dart';
import 'views/login.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HappyCarz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: fontName,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
        textTheme: TextTheme(
            bodyText2: TextStyle(
          color: lightTextColor,
        )),
      ),
      home: LoginPage(),
    );
  }
}
