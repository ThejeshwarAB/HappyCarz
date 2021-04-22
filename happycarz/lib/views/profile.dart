import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/views/dashboard.dart';
// import 'package:happycarz/model/user.dart';

class ProfilePage extends StatefulWidget {
  final FirebaseUser user;
  ProfilePage(this.user);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  final _controller = new TextEditingController();

  // _controller.text = "HELLO";

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
                              controller: _controller,
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
                      // Container(
                      //   width: size.width * .75,
                      //   child: ClipRRect(
                      //       borderRadius: BorderRadius.circular(number40),
                      //       child: FlatButton(
                      //           color: darkPurple,
                      //           padding: EdgeInsets.all(number20),
                      //           onPressed: () {
                      //             Navigator.push(
                      //               context,
                      //               MaterialPageRoute(
                      //                   builder: (context) => DashBoardPage(widget.customer)),
                      //             );
                      //           },
                      //           child: Row(
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             children: [
                      //               // Image(
                      //               //   image: AssetImage('assets/images/google.png'),
                      //               //   height: number20,
                      //               // ),
                      //               // SizedBox(
                      //               //   width: 10,
                      //               // ),
                      //               Text(
                      //                 "EDIT PROFILE",
                      //                 style: TextStyle(
                      //                     color: white, fontSize: number20),
                      //               ),
                                    
                      //             ],
                      //           ))),
                                
                      // ),
                      // SizedBox(
                      //   height: number20,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget>[
                        Container(
                        width: size.width * .325,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(number40),
                            child: FlatButton(
                                color: darkPurple,
                                padding: EdgeInsets.all(number20),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DashBoardPage(widget.user)),
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
                                      "EDIT",
                                      style: TextStyle(
                                          color: white, fontSize: number20),
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DashBoardPage(widget.user)),
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
                                      "DELETE",
                                      style: TextStyle(
                                          color: white, fontSize: number20),
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
                        style: TextStyle(color: darkPurple,),
                      ),
                      SizedBox(
                        height: number20,
                      ),
                      Text(
                        "NUMBER OF WASHES COMPLETE: 0",
                        style: TextStyle(color: darkPurple,),
                      ), 
                                   
                    ]),
              ),
            ),
          )),
    );
  }
}
