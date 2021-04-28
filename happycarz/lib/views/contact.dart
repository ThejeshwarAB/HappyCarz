import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
// import 'package:happycarz/model/user.dart';
// import 'package:happycarz/views/checkout.dart';
// import 'package:happycarz/views/profile.dart';
// import 'package:happycarz/views/login.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      // SizedBox(height: number20),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(number40),
                        child: Container(
                          color: lightPurple,
                          width: size.width * 0.9,
                          height: size.height * 0.8,
                          padding: EdgeInsets.all(number40),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "HELP US IMPROVE",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: number30,
                                      fontWeight: bold,
                                      color: darkPurple),
                                ),
                                SizedBox(height: number10),
                                Container(
                                  color: black,
                                  width: size.width * 0.25,
                                  height: 1,
                                ),
                                SizedBox(height: number10),
                                Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(height: number10),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(number40),
                                        child: Container(
                                          color: white,
                                          width: size.width * 0.8,
                                          height: size.height * 0.09,
                                          // padding: EdgeInsets.all(number20),
                                          child: FlatButton(
                                            child: Text("MOBILE",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold,
                                                    color: black)),
                                            onPressed: () {
                                              launch("tel:+919841695764");
                                            },
                                          ),
                                          // padding: EdgeInsets.all(number20),
                                        ),
                                      ),
                                      SizedBox(height: number20),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(number40),
                                        child: Container(
                                          color: white,
                                          width: size.width * 0.8,
                                          height: size.height * 0.09,
                                          // padding: EdgeInsets.all(number20),
                                          child: FlatButton(
                                            child: Text("EMAIL",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold,
                                                    color: black)),
                                            onPressed: () {
                                              launch("mailto:abibastheja@gmail.com?subject=APP FEEDBACK"); 
                                            },
                                          ),
                                          // padding: EdgeInsets.all(number20),
                                        ),
                                      ),
                                      SizedBox(height: number20),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(number40),
                                        child: Container(
                                          color: white,
                                          width: size.width * 0.8,
                                          height: size.height * 0.1,
                                          // padding: EdgeInsets.all(number20),
                                          child: FlatButton(
                                            child: Text("RATE US",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold,
                                                    color: black)),
                                            onPressed: () {
                                              launch("HTTP://google.com");
                                            },
                                          ),
                                          // padding: EdgeInsets.all(number20),
                                        ),
                                      ),
                                      SizedBox(height: number20),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(number40),
                                        child: Container(
                                          color: darkPurple,
                                          width: size.width * 0.8,
                                          height: size.height * 0.2,
                                          // padding: EdgeInsets.all(number10),
                                          child: FlatButton(
                                            child: Text(
                                                '''CHENNAI BASED STARTUP.\nGOOD SERVICE IS OUR GOAL. 
                                                \nWE ALSO DO SOFTWARE CONSULTANCY & DEV<3''',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: number15,
                                                    // fontWeight: bold,
                                                    color: white)),
                                            onPressed: null,
                                          ),
                                          // padding: EdgeInsets.all(number20),
                                        ),
                                      ),
                                    ])
                              ]),
                        ),
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}
