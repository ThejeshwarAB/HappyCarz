import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/views/register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
          backgroundColor: transparent,
          appBar: AppBar(
            title: Text(
              "HappyCarz",
              style: TextStyle(fontWeight: bold),
            ),
            centerTitle: true,
          ),
          body: Container(
            width: double.infinity,
            height: size.height,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "GET STARTED",
                    style: TextStyle(
                      fontSize: number20,
                    ),
                  ),
                  SizedBox(
                    height: number20,
                  ),
                  Container(
                    width: size.width * .75,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(number40),
                        child: FlatButton(
                            color: darkPurple,
                            padding: EdgeInsets.all(number20),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/google.png'),
                                  height: number20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "GOOGLE SIGN IN",
                                  style: TextStyle(
                                      color: white, fontSize: number20),
                                ),
                              ],
                            ))),
                  )
                ]),
          )),
    );
  }
}
