import 'package:flutter/material.dart';
import 'package:happycarz/views/login.dart';
import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HappyCarz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: darkPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: font,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
        textTheme: TextTheme(
            bodyText2: TextStyle(
          fontFamily: font,
          fontWeight: bold,
          fontSize: number20
        )),
      ),
      home: LoginPage(),
    );
  }
}