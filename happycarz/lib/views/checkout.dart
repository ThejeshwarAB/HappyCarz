import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/views/payment.dart';
// import 'package:happycarz/views/login.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
                        "JUST FEW MORE DETAILS",
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
                                    labelText: ("Your car number"),
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
                                    labelText: ("Your door number"),
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
                                    labelText: ("Your apartment name"),
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
                                    labelText:
                                        ("Suitable time slot ( morning/ evening )"),
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
                                    labelText:
                                        ("Type of service( one time / subscription )"),
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PaymentPage()),
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
                                      "CHECKOUT",
                                      style: TextStyle(
                                          color: white, fontSize: number20),
                                    ),
                                  ],
                                ))),
                      )
                    ]),
              ),
            ),
          )),
    );
  }
}
