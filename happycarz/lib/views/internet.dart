import 'package:flutter/material.dart';
// import 'package:happycarz/loader.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/model/auth.dart';
// import 'package:happycarz/model/data.dart';
// import 'package:happycarz/views/dashboard.dart';
// import 'package:happycarz/views/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class InternetPage extends StatefulWidget {
  FirebaseUser user;
  var userReference;
  bool loading = false;
  final databaseReference = Firestore.instance;
  @override
  _InternetPageState createState() => _InternetPageState();
}

class _InternetPageState extends State<InternetPage> {
  @override
  void initState() {
    super.initState();
    signOutGoogle();
  }

  @override
  void dispose() {
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
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
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("OOPS.."),
              SizedBox(height: number20),
              Text(
                "PLEASE CHECK YOUR\nINTERNET CONNECTION",
                textAlign: TextAlign.center,
                style: TextStyle(color: darkPurple, fontSize: number20),
              )
            ])),
      ),
    );
  }
}
