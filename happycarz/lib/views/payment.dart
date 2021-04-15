import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/views/login.dart';
// import 'package:happycarz/views/checkout.dart';
// import 'package:happycarz/views/login.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
                          child: SingleChildScrollView(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "ORDER DETAILS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: number30,
                                        fontWeight: bold,
                                        color: darkPurple),
                                  ),
                                  Text(
                                    "SCROLL TO THE BOTTOM TO PAY",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: number20,
                                        fontWeight: regular,
                                        color: black),
                                  ),
                                  SizedBox(height: number10),
                                  Container(
                                    color: black,
                                    width: size.width * 0.25,
                                    height: 1,
                                  ),
                                  SizedBox(height: number10),
                                  // Column(children: <Widget>[

                                  // ],),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Text("0"),
                                        SizedBox(height: number20),
                                        Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "CAR NUMBER: ",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: regular),
                                              ),
                                              Text(
                                                "TN40AJ9000",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold),
                                              ),
                                            ]),
                                        SizedBox(height: number20),
                                        Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "PHONE NUMBER: ",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: regular),
                                              ),
                                              Text(
                                                "9841695764",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold),
                                              ),
                                            ]),
                                        SizedBox(height: number20),
                                        Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "POSTAL CODE: ",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: regular),
                                              ),
                                              Text(
                                                "600095",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold),
                                              ),
                                            ]),
                                        // Text("CAR NUMBER:", style: TextStyle(fontSize: number20,),),
                                        // SizedBox(height: number10),
                                        // Text("CAR NUMBER:", style: TextStyle(fontSize: number20,),),
                                        SizedBox(height: number20),

                                        Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "DOOR NUMBER: ",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: regular),
                                              ),
                                              Text(
                                                "NO.125, FLOOR 12, OLIVE BLOCK",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold),
                                              ),
                                            ]),
                                        // Text("CAR NUMBER:", style: TextStyle(fontSize: number20,),),
                                        SizedBox(height: number20),
                                        Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "APARTMENT NAME: ",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: regular),
                                              ),
                                              // SizedBox(height: number10),
                                              Text(
                                                "ORCHID SPRINGS APARTMENTS",
                                                //                                  maxLines: 4,
                                                // softWrap: false,
                                                // overflow: TextOverflow.fade,
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold),
                                              ),
                                            ]),
                                        // Text("CAR NUMBER:", style: TextStyle(fontSize: number20,),),
                                        SizedBox(height: number20),
                                        Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "TIME SLOT: ",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: regular),
                                              ),
                                              Text(
                                                "MORNING",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold),
                                              ),
                                            ]),
                                        SizedBox(height: number20),
                                        Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "TYPE OF SERVICE: ",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: regular),
                                              ),
                                              Text(
                                                "ONE TIME WASH",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold),
                                              ),
                                            ]),
                                        SizedBox(height: number20),
                                        // Text("CAR NUMBER:", style: TextStyle(fontSize: number20,),),
                                        // SizedBox(height: number10),
                                        // SizedBox(height: number20),
                                        Column(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "AMOUNT: ",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: regular),
                                              ),
                                              Text(
                                                "Rs. 250",
                                                style: TextStyle(
                                                    fontSize: number20,
                                                    fontWeight: bold),
                                              ),
                                            ]),
                                      ]),
                                  SizedBox(height: 20),

                                  ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(number40),
                                      child: FlatButton(
                                          color: darkPurple,
                                          padding: EdgeInsets.all(number20),
                                          onPressed: () {
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
                                              Image(
                                                image: AssetImage(
                                                    'assets/images/google.png'),
                                                height: number20,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "PROCEED TO GPAY",
                                                style: TextStyle(
                                                    color: white,
                                                    fontSize: number20),
                                              ),
                                            ],
                                          ))),
                                ]),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}
