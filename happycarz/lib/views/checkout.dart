import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/views/payment.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

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
                      SizedBox(
                        height: number20,
                      ),
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
                                    labelText: ("Any landmark nearby"),
                                    labelStyle: TextStyle(
                                        color: darkPurple,
                                        fontWeight: bold,
                                        fontSize: number20)))),
                      ),
                      SizedBox(
                        height: number20,
                      ),
                      Text("CHOOSE CAR TYPE"),
                      SizedBox(
                        height: number10,
                      ),
                      Container(
                        width: size.width,
                        child: CustomRadioButton(
                          elevation: 0,
                          spacing: 5,
                          width: size.width * 0.35,
                          defaultSelected: "SEDAN",
                          enableShape: true,
                          height: size.height * 0.08,
                          selectedBorderColor: transparent,
                          unSelectedBorderColor: transparent,
                          // absoluteZeroSpacing: true,
                          wrapAlignment: WrapAlignment.center,
                          unSelectedColor: lightPurple,
                          buttonLables: [
                            'SEDAN',
                            'HATCH',
                            'SUV',
                            'PREMIUM',
                          ],
                          buttonValues: ["SEDAN", "HATCH", "SUV", "PREMIUM"],
                          // autoWidth: true,
                          enableButtonWrap: true,
                          buttonTextStyle: ButtonTextStyle(
                              selectedColor: white,
                              unSelectedColor: darkPurple,
                              textStyle: TextStyle(
                                  color: darkPurple,
                                  fontWeight: bold,
                                  fontSize: number20)),
                          radioButtonValue: (value) {
                            // print(value);
                          },
                          selectedColor: darkPurple,
                        ),
                      ),
                       SizedBox(
                        height: number20,
                      ),    
                      Text("CHOOSE SUBSCRIPTION"),
                      SizedBox(
                        height: number10,
                      ),                   
                      Container(
                        width: size.width,
                        child: CustomRadioButton(
                          elevation: 0,
                          width: size.width,        
                          enableShape: true,
                          height: size.height * 0.08,
                          selectedBorderColor: transparent,
                          unSelectedBorderColor: transparent,
                          // absoluteZeroSpacing: true,
                          // wrapAlignment: WrapAlignment.start,
                          unSelectedColor: lightPurple,
                          buttonLables: [
                            'ONETIME ( 1X )',
                            'FORTNIGHT ( 2X )',
                            'MONTHLY ( 5X )',
                            'ANNUAL ( 50X )',
                          ],
                          buttonValues: ["ONETIME", "FORTNIGHT", "MONTHLY", "ANNUAL"],
                          defaultSelected: "ONETIME",
                          autoWidth: false,
                          enableButtonWrap: true,
                          buttonTextStyle: ButtonTextStyle(
                              selectedColor: white,
                              unSelectedColor: darkPurple,
                              textStyle: TextStyle(
                                  color: darkPurple,
                                  fontWeight: bold,
                                  fontSize: number20)),
                          radioButtonValue: (value) {
                            // print(value);
                          },
                          selectedColor: darkPurple,
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
                      ),
                       SizedBox(
                        height: number20,
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}
