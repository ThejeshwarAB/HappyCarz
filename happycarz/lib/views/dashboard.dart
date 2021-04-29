import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/loader.dart';
import 'package:happycarz/views/checkout.dart';
import 'package:happycarz/views/plans.dart';
import 'package:happycarz/views/profile.dart';
import 'package:happycarz/views/contact.dart';

// ignore: must_be_immutable
class DashBoardPage extends StatefulWidget {
  // final Customer customer;
  final FirebaseUser user;
  bool loading = false;
  DashBoardPage(this.user);
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  
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
      child: widget.loading
          ? Loader()
          : Scaffold(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // SizedBox(height: number20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(number40),
                            child: Container(
                              color: lightPurple,
                              width: size.width * 0.9,
                              height: size.height * 0.4,
                              padding: EdgeInsets.all(number40),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "HEY THERE,\n${widget.user.providerData[0].email}",
                                      // "HEY THERE,\nTHEJESHWAR",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: number20,
                                          fontWeight: bold,
                                          color: darkPurple),
                                    ),
                                    // SizedBox(height: number10),
                                    Container(
                                      color: black,
                                      width: size.width * 0.25,
                                      height: 1,
                                    ),
                                    // SizedBox(height: number10),
                                    Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          // Text("0"),
                                          // SizedBox(height: number20),
                                          Text(
                                            "YOUR STATUS",
                                            style: TextStyle(
                                              fontSize: number20,
                                            ),
                                          ),
                                          SizedBox(height: number10),
                                          Text(
                                            "ENDS BY MAY 1, 2021",
                                            style: TextStyle(
                                                fontSize: number20,
                                                fontWeight: regular),
                                          ),
                                          SizedBox(height: number10),
                                          Text(
                                            "WASHES COMPLETE: 0",
                                            style: TextStyle(
                                                fontSize: number20,
                                                fontWeight: regular),
                                          ),
                                          SizedBox(height: number20),
                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      number40),
                                              child: FlatButton(
                                                  color: darkPurple,
                                                  padding:
                                                      EdgeInsets.all(number20),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              PlansPage()),
                                                    );
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "CHECK PLANS",
                                                        style: TextStyle(
                                                          color: white,
                                                          fontSize: number20,
                                                          // fontWeight: bold
                                                        ),
                                                      ),
                                                    ],
                                                  ))),
                                        ])
                                  ]),
                            ),
                          ),
                          SizedBox(height: number20),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(number40),
                            child: Container(
                              color: lightPurple,
                              width: size.width * 0.9,
                              height: size.height * 0.4,
                              padding: EdgeInsets.all(number40),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "CHOOSE YOUR ACTION",
                                      style: TextStyle(
                                          fontSize: number20,
                                          fontWeight: regular,
                                          color: darkPurple),
                                    ),
                                    SizedBox(height: number10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(number40),
                                          child: Container(
                                            color: white,
                                            width: size.width * 0.35,
                                            height: size.height * 0.15,
                                            child: FlatButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ProfilePage(
                                                                widget.user)),
                                                  );
                                                },
                                                child: Text("PROFILE",
                                                    style: TextStyle(
                                                        fontSize: number20,
                                                        fontWeight: bold,
                                                        color: darkPurple))),
                                          ),
                                        ),
                                        //  SizedBox(width: number30),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(number40),
                                          child: Container(
                                            color: white,
                                            width: size.width * 0.35,
                                            height: size.height * 0.15,
                                            child: FlatButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            ContactPage()),
                                                  );
                                                },
                                                child: Text("CONTACT",
                                                    style: TextStyle(
                                                        fontSize: number20,
                                                        fontWeight: bold,
                                                        color: darkPurple))),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: number10),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: size.width * .7,
                                            // height: size.height * .,
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        number40),
                                                child: FlatButton(
                                                    color: darkPurple,
                                                    padding: EdgeInsets.all(
                                                        number20),
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                CheckoutPage(widget.user)),
                                                      );
                                                    },
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "BOOK A WASH",
                                                          style: TextStyle(
                                                            color: white,
                                                            fontSize: number20,
                                                            // fontWeight: bold
                                                          ),
                                                        ),
                                                      ],
                                                    ))),
                                          )
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
