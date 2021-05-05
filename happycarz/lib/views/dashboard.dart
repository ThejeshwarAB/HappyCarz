import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/loader.dart';
import 'package:happycarz/model/data.dart';
import 'package:happycarz/views/checkout.dart';
import 'package:happycarz/views/internet.dart';
import 'package:happycarz/views/plans.dart';
import 'package:happycarz/views/profile.dart';
import 'package:happycarz/views/contact.dart';

// ignore: must_be_immutable
class DashBoardPage extends StatefulWidget {
  // final Customer customer;
  final FirebaseUser user;
  bool loading = false;
  var userReference;
  final databaseReference = Firestore.instance;
  DashBoardPage(this.user);
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {

  String _transactionLength="0", _status="ACTIVE";

  @override
  void initState() { 
    super.initState();
     widget.userReference = databaseReference
        .collection('customers')
        .document(widget.user.providerData[0].email);
    widget.userReference.get().then((docSnapshot) => {
          if (docSnapshot.exists)
            {
              setState(() {
                // _nameController.text = docSnapshot["name"];
                // _mobileController.text = docSnapshot["mobile"];
                // _postalController.text = docSnapshot["postal"];
                _transactionLength = docSnapshot["transactions"].length.toString();
                _status = docSnapshot["status"];
              })
            }
        });
  }

  var connected = true;

  Future<void> checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      setState(() {
        connected = true;
      });
    } else {
      setState(() {
        connected = false;
      });
    }
  }

  
  @override
  Widget build(BuildContext context) {

    checkConnection();

    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: !connected
          ? InternetPage()
          : (widget.loading
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
                                            "SUBSCRIPTION: $_status",
                                            style: TextStyle(
                                                fontSize: number20,
                                                fontWeight: regular),
                                          ),
                                          SizedBox(height: number10),
                                          Text(
                                            "WASHES COMPLETE: $_transactionLength",
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
                                                              PlansPage(widget.user)),
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
                                                            ContactPage(widget.user)),
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
              ))),
    );
  }
}
