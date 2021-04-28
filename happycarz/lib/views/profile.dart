import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/loader.dart';
import 'package:happycarz/model/data.dart';
import 'package:happycarz/views/dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:happycarz/views/login.dart';

// ignore: must_be_immutable
class ProfilePage extends StatefulWidget {
  final FirebaseUser user;
  var userReference;
  final databaseReference = Firestore.instance;
  bool loading = false;
  ProfilePage(this.user);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _nameController = new TextEditingController();
  final _mobileController = new TextEditingController();
  final _postalController = new TextEditingController();
  // _controller.text = "HELLO";

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
                _nameController.text = docSnapshot["name"];
                _mobileController.text = docSnapshot["mobile"];
                _postalController.text = docSnapshot["postal"];
              })
            }
        });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _mobileController.dispose();
    _postalController.dispose();
    super.dispose();
  }

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
      child:  widget.loading
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
                // reverse: true,
                child: Form(
                   key: _formKey,
                                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WE ARE HAPPY TO HELP YOU",
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
                                  controller: _nameController,
                                  style: TextStyle(
                                      color: black,
                                      fontWeight: bold,
                                      fontSize: number20),
                                  decoration: InputDecoration(
                                      // contentPadding: EdgeInsets.fromLTRB(number20, number20, number20, number20),
                                      fillColor: lightPurple,
                                      filled: true,
                                      labelText: ("Edit your name"),
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
                                  controller: _mobileController,
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
                                  controller: _postalController,
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
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: size.width * .325,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(number40),
                                    child: FlatButton(
                                        color: darkPurple,
                                        padding: EdgeInsets.all(number20),
                                        onPressed: () async {
                                          setState(() {
                                            widget.loading = true;
                                          });
                                          databaseReference
                                              .collection('customers')
                                              .document(widget
                                                  .user.providerData[0].email)
                                              .updateData({
                                            "id":
                                                widget.user.providerData[0].email,
                                            "name": _nameController.text,
                                            "mobile": _mobileController.text,
                                            "postal": _postalController.text,
                                          });
                                          setState(() {
                                            widget.loading = false;
                                          });
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DashBoardPage(widget.user)),
                                          );
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "EDIT",
                                              style: TextStyle(
                                                  color: white,
                                                  fontSize: number20),
                                            ),
                                          ],
                                        ))),
                              ),
                              SizedBox(width: number20),
                              Container(
                                width: size.width * .325,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(number40),
                                    child: FlatButton(
                                        color: warning,
                                        padding: EdgeInsets.all(number20),
                                        onPressed: () async {
                                          await databaseReference
                                              .collection('customers')
                                              .document(widget
                                                  .user.providerData[0].email)
                                              .delete();
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPage()),
                                          );
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            // Image(
                                            //   image: AssetImage('assets/images/google.png'),
                                            //   height: number20,
                                            // ),
                                            // SizedBox(
                                            //   width: 10,
                                            // ),
                                            Text(
                                              "DELETE",
                                              style: TextStyle(
                                                  color: white,
                                                  fontSize: number20),
                                            ),
                                          ],
                                        ))),
                              ),
                            ]),
                        SizedBox(
                          height: number20,
                        ),
                        Text(
                          "SUBSCRIPTION STATUS: ACTIVE",
                          style: TextStyle(
                            color: darkPurple,
                          ),
                        ),
                        SizedBox(
                          height: number20,
                        ),
                        Text(
                          "NUMBER OF WASHES COMPLETE: 0",
                          style: TextStyle(
                            color: darkPurple,
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          )),
    );
  }
}
