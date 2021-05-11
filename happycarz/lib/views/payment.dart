import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/loader.dart';
import 'package:happycarz/model/data.dart';
import 'package:happycarz/views/dashboard.dart';
import 'package:happycarz/views/internet.dart';
import 'package:upi_india/upi_india.dart';

// ignore: must_be_immutable
class PaymentPage extends StatefulWidget {
  final FirebaseUser user;
  bool loading = false;
  final Map<String, dynamic> _mapValue;
  PaymentPage(this.user, this._mapValue);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  Map<String, dynamic> _mapValue;

  @override
  void initState() {
    super.initState();
    _mapValue = widget._mapValue;
    print("In payment page:$_mapValue");
  }

  UpiIndia _upiIndia = UpiIndia();
  UpiApp app = UpiApp.googlePay;
  UpiResponse res;
  String _message = "PROCEED TO GPAY";
  var _colorCode = darkPurple;

  Future<UpiResponse> initiateTransaction(UpiApp app) async {
    return _upiIndia.startTransaction(
      app: app,
      receiverUpiId: "abibastheja@okhdfcbank",
      receiverName: 'Thejeshwar AB',
      transactionRefId: 'UpiPlugin',
      transactionNote: 'HappyCarzPayment',
      amount: _mapValue['_totalAmount'],
    );
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                          // Column(children: <Widget>
                                          // ],),
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                // Text("0"),
                                                SizedBox(height: number20),
                                                Column(
                                                    // mainAxisAlignment:
                                                    //     MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "CAR NUMBER:",
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight:
                                                                regular),
                                                      ),
                                                      Text(
                                                        "${_mapValue['carNumber']}",
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "DOOR NUMBER:",
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight:
                                                                regular),
                                                      ),
                                                      Text(
                                                        "${_mapValue['doorNumber']}",
                                                        style: TextStyle(
                                                            color: black,
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "APARTMENT:",
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight:
                                                                regular),
                                                      ),
                                                      // SizedBox(height: number10),
                                                      Text(
                                                        "${_mapValue['apartment']}",
                                                        //                                  maxLines: 4,
                                                        // softWrap: false,
                                                        // overflow: TextOverflow.fade,
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "LANDMARK:",
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight:
                                                                regular),
                                                      ),
                                                      // SizedBox(height: number10),
                                                      Text(
                                                        "${_mapValue['landmark']}",
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "CAR TYPE:",
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight:
                                                                regular),
                                                      ),
                                                      Text(
                                                        "${_mapValue['carType']}",
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "SUBSCRIPTION:",
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight:
                                                                regular),
                                                      ),
                                                      Text(
                                                        "${_mapValue['subscription']}",
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "OPTED DAY&TIME:",
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight:
                                                                regular),
                                                      ),
                                                      Text(
                                                        "${_mapValue['dayPreferred']},${_mapValue['timePreferred']}",
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "OPTED PLANTYPE:",
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight:
                                                                regular),
                                                      ),
                                                      Text(
                                                        "${_mapValue['planType']}",
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
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "SERVICE AMOUNT: ",
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight:
                                                                regular),
                                                      ),
                                                      Text(
                                                        "Rs. ${_mapValue['totalAmount']}",
                                                        style: TextStyle(
                                                            fontSize: number20,
                                                            fontWeight: bold),
                                                      ),
                                                    ]),
                                              ]),
                                          SizedBox(height: 20),

                                          ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      number40),
                                              child: FlatButton(
                                                color: _colorCode,
                                                padding:
                                                    EdgeInsets.all(number20),
                                                onPressed: () async {
                                                  // await addTransactionData(
                                                  //     _mapValue);
                                                  try {
                                                    res =
                                                        await initiateTransaction(
                                                            app);
                                                    if (res.status ==
                                                        UpiPaymentStatus
                                                            .FAILURE) {
                                                    } else if (res.status ==
                                                            UpiPaymentStatus
                                                                .SUCCESS)
                                                                {
                                                                  await addTransactionData(
                                                      _mapValue);
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                DashBoardPage(
                                                                    widget
                                                                        .user)),
                                                      );}
                                                  } catch (UpiIndiaAppNotInstalledException) {
                                                    setState(() {
                                                      _message =
                                                          "GPAY NOT INSTALLED";
                                                      _colorCode = warning;
                                                    });
                                                    await Future.delayed(Duration(seconds: 3));
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              DashBoardPage(
                                                                  widget.user)),
                                                    );
                                                  }
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
                                                      _message,
                                                      style: TextStyle(
                                                          color: white,
                                                          fontSize: number20),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                        ]),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ))),
    );
  }
}
