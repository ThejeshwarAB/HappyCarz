import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/model/user.dart';
import 'package:happycarz/views/dashboard.dart';
// import 'package:happycarz/views/login.dart';


class RegisterPage extends StatefulWidget {
  final Customer customer;
  RegisterPage(this.customer);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            child: Center(
              child: SingleChildScrollView(
                // reverse: true,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "WE ARE GLAD TO KNOW",
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
                            child: TextField(
                                // decoration: InputDecoration(color: lightPurple),
                                // obscureText: true,
                                style: TextStyle(
                                    color: black,
                                    fontWeight: bold,
                                    fontSize: number20),
                                decoration: InputDecoration(
                                    // contentPadding: EdgeInsets.fromLTRB(number20, number20, number20, number20),
                                    fillColor: lightPurple,
                                    filled: true,
                                    labelText: ("Tell us your name"),
                                    labelStyle: TextStyle(
                                        color: darkPurple,
                                        fontWeight: bold,
                                        fontSize: number20)))),
                      ),
                      SizedBox(
                        height: number20,
                      ),
                      Container(
                        width: size.width * .75,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(number40),
                            child: TextField(
                                // decoration: InputDecoration(color: lightPurple),
                                // obscureText: true,
                                style: TextStyle(
                                    color: black,
                                    fontWeight: bold,
                                    fontSize: number20),
                                decoration: InputDecoration(
                                    // contentPadding: EdgeInsets.all(number10),
                                    fillColor: lightPurple,
                                    filled: true,
                                    labelText: ("Your mobile number"),
                                    labelStyle: TextStyle(
                                        color: darkPurple,
                                        fontWeight: bold,
                                        fontSize: number20)))),
                      ),
                      SizedBox(height: number20),
                      Container(
                        width: size.width * .75,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(number40),
                            child: TextField(
                                // decoration: InputDecoration(color: lightPurple),
                                // obscureText: true,
                                style: TextStyle(
                                    color: black,
                                    fontWeight: bold,
                                    fontSize: number20),
                                decoration: InputDecoration(
                                    // contentPadding: EdgeInsets.all(number20),
                                    // prefixStyle: TextStyle(color: Colors.white),
                                    fillColor: lightPurple,
                                    filled: true,
                                    labelText: ("And your postal code"),
                                    labelStyle: TextStyle(
                                        color: darkPurple,
                                        fontWeight: bold,
                                        fontSize: number20)))),
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
                                        builder: (context) => DashBoardPage(widget.customer)),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Image(
                                    //   image: AssetImage('assets/images/google.png'),
                                    //   height: number20,
                                    // ),
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                    Text(
                                      "REGISTER",
                                      style: TextStyle(
                                          color: white, fontSize: number20),
                                    ),
                                  ],
                                ))),
                      )
                    ]),
              ),
            ),
          )),
    );
  }
}
