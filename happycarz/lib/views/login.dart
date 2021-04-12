import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // top part of the screen
        appBar: AppBar(
          title: Text("HappyCarz"),
          centerTitle: true,
          elevation: 2,
          backgroundColor: darkTextColor,
        ),
        // content of the screen
        backgroundColor: lightTextColor,
        body: Center(
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
                // colorFilter:
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.dstATop)),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(buttonRadius)),
                    padding: EdgeInsets.all(paddingValue),
                    color: darkTextColor,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/google.png'),
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "SIGN IN WITH GOOGLE",
                          style: TextStyle(
                              fontSize: normalFontSize,
                              fontWeight: boldFont,
                              color: lightTextColor),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    })
              ]),
        )));
  }
}
