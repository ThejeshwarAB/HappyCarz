import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/loader.dart';
import 'package:happycarz/model/data.dart';
import 'package:happycarz/views/dashboard.dart';
import 'package:happycarz/views/internet.dart';
import 'package:happycarz/views/login.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  final FirebaseUser user;
  bool loading = false;
  RegisterPage(this.user);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _nameController = new TextEditingController();
  final _mobileController = new TextEditingController();
  final _postalController = new TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _mobileController.dispose();
    _postalController.dispose();
    super.dispose();
  }

  String _validateName(String value) {
    RegExp regExp = new RegExp(r'^[a-zA-Z]{5,23}$');
    if (!regExp.hasMatch(value) || value.isEmpty) {
      return '\tPlease enter valid name';
    }
    return null;
  }

  String _validateMobile(String value) {
    RegExp regExp = new RegExp(r'^[0-9]{10}$');
    if (!regExp.hasMatch(value) || value.isEmpty) {
      return '\tPlease enter valid mobile no.';
    }
    return null;
  }

  String _validatePostal(String value) {
    RegExp regExp = new RegExp(r'^[6]{1}[0-9]{5}$');
    if (!regExp.hasMatch(value) || value.isEmpty) {
      return '\tPlease enter valid postal code';
    }
    return null;
  }

  Map<String, dynamic> _mapValue = new Map();

  Future<void> makeAsMap() {
    _mapValue = {
      "id": widget.user.providerData[0].email,
      "name": _nameController.text,
      "mobile": _mobileController.text,
      "postal": _postalController.text,
    };
    return null;
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
                    child: Form(
                      key: _formKey,
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
                                  child: TextFormField(
                                      controller: _nameController,
                                      validator: (value) =>
                                          _validateName(value),
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: bold,
                                          fontSize: number20),
                                      decoration: InputDecoration(
                                          errorStyle: TextStyle(
                                              color: warning,
                                              fontWeight: bold,
                                              fontSize: number15),
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
                                  child: TextFormField(
                                      controller: _mobileController,
                                      validator: (value) =>
                                          _validateMobile(value),
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: bold,
                                          fontSize: number20),
                                      decoration: InputDecoration(
                                          errorStyle: TextStyle(
                                              color: warning,
                                              fontWeight: bold,
                                              fontSize: number15),
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
                                  child: TextFormField(
                                      controller: _postalController,
                                      validator: (value) =>
                                          _validatePostal(value),
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: bold,
                                          fontSize: number20),
                                      decoration: InputDecoration(
                                          errorStyle: TextStyle(
                                              color: warning,
                                              fontWeight: bold,
                                              fontSize: number15),
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
                                      onPressed: () async {
                                        setState(() {
                                          widget.loading = true;
                                        });
                                        if (_formKey.currentState.validate()) {
                                          setState(() {
                                            widget.loading = false;
                                          });
                                          await makeAsMap();
                                          print(_mapValue);
                                          await addCustomerData(_mapValue);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    DashBoardPage(widget.user)),
                                          );
                                        }
                                        else{
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPage()),
                                          );
                                        }
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "REGISTER",
                                            style: TextStyle(
                                                color: white,
                                                fontSize: number20),
                                          ),
                                        ],
                                      ))),
                            )
                          ]),
                    ),
                  ),
                ),
              ))),
    );
  }
}
