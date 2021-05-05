import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:happycarz/loader.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/model/auth.dart';
import 'package:happycarz/model/data.dart';
import 'package:happycarz/views/dashboard.dart';
import 'package:happycarz/views/internet.dart';
import 'package:happycarz/views/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  FirebaseUser user;
  var userReference;
  bool loading = false;
  final databaseReference = Firestore.instance;
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    signOutGoogle();
  }

  @override
  void dispose() {
    super.dispose();
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

    checkConnection();

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
                                    onPressed: () async {
                                      setState(() {
                                        widget.loading = true;
                                      });
                                      signInWithGoogle().then((user) => {
                                            // widget.customer.setUser(user),
                                            // setState((){
                                            //   widget.loading = true;
                                            // }),
                                            widget.user = user,
                                            // if (widget.customer.id=="")
                                            // {
                                            //   Navigator.push(
                                            //     context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) =>
                                            //             RegisterPage(widget.user)),
                                            //   ),
                                            // },
                                            widget.userReference =
                                                databaseReference
                                                    .collection('customers')
                                                    .document(widget.user
                                                        .providerData[0].email),
                                            widget.userReference
                                                .get()
                                                .then((docSnapshot) => {
                                                      setState(() {
                                                        widget.loading = false;
                                                      }),
                                                      if (!docSnapshot.exists)
                                                        {
                                                          // widget.userReference
                                                          //     .onSnapshot(() => {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    RegisterPage(
                                                                        widget
                                                                            .user)),
                                                          ),
                                                          // })
                                                        }
                                                      else
                                                        {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    DashBoardPage(
                                                                        widget
                                                                            .user)),
                                                          ),
                                                        }
                                                    }),
                                          });
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              'assets/images/google.png'),
                                          height: number20,
                                        ),
                                        SizedBox(
                                          width: number10,
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
                  ))),
    );
  }
}
