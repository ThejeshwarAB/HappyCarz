import 'package:flutter/material.dart';
import 'package:happycarz/views/login.dart';
import 'package:sizer/sizer.dart';
import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(//return LayoutBuilder
        builder: (context, constraints) {
      return OrientationBuilder(//return OrientationBuilder
          builder: (context, orientation) {
        //initialize SizerUtil()
        SizerUtil().init(constraints, orientation);
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
                    fontFamily: font, fontWeight: bold, fontSize: number20)),
          ),
          home: LoginPage(),
        );
      });
    });
  }
}
