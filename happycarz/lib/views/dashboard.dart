import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
// import 'package:happycarz/main.dart';
import 'package:happycarz/views/login.dart';

class DashBoardPage extends StatefulWidget {
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
                          height: size.height * 0.4,
                          padding: EdgeInsets.all(number40),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Text(
                              "HEY THERE,\nUSER NAME",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: number30,
                                  fontWeight: bold,
                                  color: darkPurple),
                            ),
                            SizedBox(height: number10),
                            Container(color: black,
                            width: size.width*0.25,
                            height: 1,),
                            SizedBox(height: number10),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // Text("0"),
                                // SizedBox(height: number20),
                                Text("YOUR STATUS", style: TextStyle(fontSize: number30),),
                                SizedBox(height: number10),
                                Text("ENDS BY MAY 1, 2021"), 
                                SizedBox(height: number10),
                                Text("WASHES COMPLETE: 0", style: TextStyle(fontSize: number20),),
                               
                              ]
                            )
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
                          child: Column(children: <Widget>[
                            Text(
                              "CHOOSE YOUR ACTION",
                              style: TextStyle(
                                  fontSize: number20,
                                  fontWeight: bold,
                                  color: darkPurple),
                            ),
                            SizedBox(height: number10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(number40),
                                  child: Container(
                                    color: white,
                                    width: size.width * 0.35,
                                    height: size.height * 0.15,
                                    child: FlatButton(
                                        onPressed: () {},
                                        child: Text("PROFILE",
                                            style: TextStyle(
                                                fontSize: number20,
                                                fontWeight: bold,
                                                color: darkPurple))),
                                  ),
                                ),
                                //  SizedBox(width: number30),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(number40),
                                  child: Container(
                                    color: white,
                                    width: size.width * 0.35,
                                    height: size.height * 0.15,
                                    child: FlatButton(
                                        onPressed: () {},
                                        child: Text("FEEDBACK",
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[Container(
                        width: size.width * .7,
                        // height: size.height * .,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(number40),
                            child: FlatButton(
                                color: darkPurple,
                                padding: EdgeInsets.all(number20),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()),
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
                                      "BOOK A WASH",
                                      style: TextStyle(
                                          color: white, fontSize: number20, fontWeight: bold),
                                    ),
                                  ],
                                ))),
                      )]
                            )
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
