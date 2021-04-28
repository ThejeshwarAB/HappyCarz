import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/views/payment.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

class CheckoutPage extends StatefulWidget {
  final FirebaseUser user;
  CheckoutPage(this.user);
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  final _carNumberController = new TextEditingController();
  final _doorNumberController = new TextEditingController();
  final _apartmentController = new TextEditingController();
  final _landmarkController = new TextEditingController();
  String _carType = "SEDAN";
  String _subscription = "ONETIME";
  String _dayPreferred = "MONDAY";
  String _timePreferred = "6AM-7AM";
  String _planType = "ECO";

  String _validateCar(String value) {
    RegExp regExp = new RegExp(r'^[a-zA-Z0-9 ]{7,10}$');
    if (!regExp.hasMatch(value) || value.isEmpty) {
      return '\tPlease enter valid car no.';
    }
    return null;
  }

  String _validateDoor(String value) {
    RegExp regExp = new RegExp(r'^[a-zA-Z ]{5,30}$');
    if (!regExp.hasMatch(value) || value.isEmpty) {
      return '\tPlease enter valid door no.';
    }
    return null;
  }

  String _validateApartment(String value) {
    RegExp regExp = new RegExp(r'^[a-zA-Z0-9]{5,40}$');
    if (!regExp.hasMatch(value) || value.isEmpty) {
      return '\tPlease enter valid apartment';
    }
    return null;
  }

  String _validateLandmark(String value) {
    RegExp regExp = new RegExp(r'^[a-zA-Z0-9]{5,40}$');
    if (!regExp.hasMatch(value) || value.isEmpty) {
      return '\tPlease enter valid landmark';
    }
    return null;
  }

  Map<String, dynamic> _mapValue = new Map();

  Future<void> makeAsMap() {
    _mapValue = {
      "id": widget.user.providerData[0].email,
      "carNumber": _carNumberController.text,
      "doorNumber": _doorNumberController.text,
      "apartment": _apartmentController.text,
      "landmark": _landmarkController.text,
      "carType": _carType,
      "subscription": _subscription,
      "dayPreferred": _dayPreferred,
      "timePreferred": _timePreferred,
      "planType": _planType,
    };
    return null;
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
                child: Form(
                  key: _formKey,
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
                              child: TextFormField(
                                  // decoration: InputDecoration(color: lightPurple),
                                  // obscureText: true,
                                  controller: _carNumberController,
                                  validator: (value) => _validateCar(value),
                                  style: TextStyle(
                                      color: black,
                                      fontWeight: bold,
                                      fontSize: number20),
                                  decoration: InputDecoration(
                                      // contentPadding: EdgeInsets.fromLTRB(number20, number20, number20, number20),
                                      fillColor: lightPurple,
                                      filled: true,
                                      errorStyle: TextStyle(
                                              color: warning,
                                              fontWeight: bold,
                                              fontSize: number15),
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
                              child: TextFormField(
                                  // decoration: InputDecoration(color: lightPurple),
                                  // obscureText: true,
                                  controller: _doorNumberController,
                                  validator: (value) => _validateDoor(value),
                                  style: TextStyle(
                                      color: black,
                                      fontWeight: bold,
                                      fontSize: number20),
                                  decoration: InputDecoration(
                                      // contentPadding: EdgeInsets.all(number20),
                                      // prefixStyle: TextStyle(color: Colors.white),
                                      fillColor: lightPurple,
                                      filled: true,
                                      errorStyle: TextStyle(
                                              color: warning,
                                              fontWeight: bold,
                                              fontSize: number15),
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
                              child: TextFormField(
                                  // decoration: InputDecoration(color: lightPurple),
                                  // obscureText: true,
                                  controller: _apartmentController,
                                  validator: (value) =>
                                      _validateApartment(value),
                                  style: TextStyle(
                                      color: black,
                                      fontWeight: bold,
                                      fontSize: number20),
                                  decoration: InputDecoration(
                                      // contentPadding: EdgeInsets.all(number10),
                                      fillColor: lightPurple,
                                      filled: true,
                                      errorStyle: TextStyle(
                                              color: warning,
                                              fontWeight: bold,
                                              fontSize: number15),
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
                              child: TextFormField(
                                  // decoration: InputDecoration(color: lightPurple),
                                  // obscureText: true,
                                  controller: _landmarkController,
                                  validator: (value) =>
                                      _validateLandmark(value),
                                  style: TextStyle(
                                      color: black,
                                      fontWeight: bold,
                                      fontSize: number20),
                                  decoration: InputDecoration(
                                      // contentPadding: EdgeInsets.all(number10),
                                      fillColor: lightPurple,
                                      filled: true,
                                      errorStyle: TextStyle(
                                              color: warning,
                                              fontWeight: bold,
                                              fontSize: number15),
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
                              setState(() {
                                _carType = value;
                              });
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
                            buttonValues: [
                              "ONETIME",
                              "FORTNIGHT",
                              "MONTHLY",
                              "ANNUAL"
                            ],
                            defaultSelected: "ONETIME",
                            autoWidth: false,
                            enableButtonWrap: true,
                            buttonTextStyle: ButtonTextStyle(
                                selectedColor: white,
                                unSelectedColor: darkPurple,
                                textStyle: TextStyle(
                                    color: darkPurple,
                                    fontWeight: bold,
                                    fontSize: number15)),
                            radioButtonValue: (value) {
                               setState(() {
                                _subscription = value;
                              });
                            },
                            selectedColor: darkPurple,
                          ),
                        ),
                        SizedBox(
                          height: number20,
                        ),
                        Text("PREFERRED DAY OF WEEK"),
                        SizedBox(
                          height: number10,
                        ),
                        Container(
                          width: size.width,
                          child: CustomRadioButton(
                            elevation: 0,
                            spacing: 5,
                            width: size.width * 0.35,
                            defaultSelected: "MONDAY",
                            enableShape: true,
                            height: size.height * 0.08,
                            selectedBorderColor: transparent,
                            unSelectedBorderColor: transparent,
                            // absoluteZeroSpacing: true,
                            wrapAlignment: WrapAlignment.center,
                            unSelectedColor: lightPurple,
                            buttonLables: [
                              'MONDAY',
                              'WEDNESDAY',
                              'FRIDAY',
                              'SUNDAY',
                              // 'SUV',
                              // 'PREMIUM',
                            ],
                            buttonValues: [
                              "MONDAY",
                              "WEDNESDAY",
                              "FRIDAY",
                              "SUNDAY",
                            ],
                            // autoWidth: true,
                            enableButtonWrap: true,
                            buttonTextStyle: ButtonTextStyle(
                                selectedColor: white,
                                unSelectedColor: darkPurple,
                                textStyle: TextStyle(
                                    color: darkPurple,
                                    fontWeight: bold,
                                    fontSize: number15)),
                            radioButtonValue: (value) {
                               setState(() {
                                _dayPreferred = value;
                              });
                            },
                            selectedColor: darkPurple,
                          ),
                        ),
                        SizedBox(
                          height: number20,
                        ),
                        Text("PREFERRED TIME OF SERVICE"),
                        SizedBox(
                          height: number10,
                        ),
                        Container(
                          width: size.width,
                          child: CustomRadioButton(
                            elevation: 0,
                            spacing: 5,
                            width: size.width * 0.35,
                            defaultSelected: "6AM-7AM",
                            enableShape: true,
                            height: size.height * 0.08,
                            selectedBorderColor: transparent,
                            unSelectedBorderColor: transparent,
                            // absoluteZeroSpacing: true,
                            wrapAlignment: WrapAlignment.center,
                            unSelectedColor: lightPurple,
                            buttonLables: [
                              '6AM-7AM',
                              '7PM-8PM',
                              // 'SUV',
                              // 'PREMIUM',
                            ],
                            buttonValues: ["6AM-7AM", "7PM-8PM"],
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
                               setState(() {
                                _timePreferred = value;
                              });
                            },
                            selectedColor: darkPurple,
                          ),
                        ),
                        SizedBox(
                          height: number20,
                        ),
                        Text("CHOOSE PLAN"),
                        SizedBox(
                          height: number10,
                        ),
                        Container(
                          width: size.width,
                          child: CustomRadioButton(
                            elevation: 0,
                            spacing: 5,
                            width: size.width,
                            defaultSelected: "ECO",
                            enableShape: true,
                            height: size.height * 0.08,
                            selectedBorderColor: transparent,
                            unSelectedBorderColor: transparent,
                            // absoluteZeroSpacing: true,
                            wrapAlignment: WrapAlignment.center,
                            unSelectedColor: lightPurple,
                            buttonLables: [
                              'ECO (OUTER ONLY): 500 INR',
                              'FOAM (OUTER ONLY): 500 INR',
                              'ELITE (INNER+OUTER): 500 INR',
                            ],
                            buttonValues: ["ECO", "FOAM", "ELITE"],
                            // autoWidth: true,
                            enableButtonWrap: true,
                            buttonTextStyle: ButtonTextStyle(
                                selectedColor: white,
                                unSelectedColor: darkPurple,
                                textStyle: TextStyle(
                                    color: darkPurple,
                                    fontWeight: bold,
                                    fontSize: number15)),
                            radioButtonValue: (value) {
                              _planType = value;
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
                                  onPressed: () async {
                                     if (_formKey.currentState.validate()) {
                                    await makeAsMap();
                                    print(_mapValue);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PaymentPage(
                                              widget.user, _mapValue)),
                                    );
                                  }
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
            ),
          )),
    );
  }
}
