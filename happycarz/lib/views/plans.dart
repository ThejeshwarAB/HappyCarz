import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:happycarz/loader.dart';
import 'package:happycarz/views/internet.dart';
// import 'package:happycarz/model/user.dart';
// import 'package:happycarz/views/checkout.dart';
// import 'package:happycarz/views/profile.dart';
// import 'package:happycarz/views/login.dart';
// import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class PlansPage extends StatefulWidget {
  final FirebaseUser user;
  bool loading = false;
  PlansPage(this.user);
  @override
  _PlansPageState createState() => _PlansPageState();
}

class _PlansPageState extends State<PlansPage> {

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
      child:  !connected
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
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "PLANS WE OFFER",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: number30,
                                      fontWeight: bold,
                                      color: darkPurple),
                                ),
                                SizedBox(height: number10),
                                Container(
                                  color: black,
                                  width: size.width * 0.25,
                                  height: 1,
                                ),
                                SizedBox(height: number10),
                                DataTable(
                                  columnSpacing: number30,
                                  horizontalMargin: 0,
                                  columns: <DataColumn>[
                                  DataColumn(label: Text("TYPE", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                  DataColumn(label: Text("ECO", style: TextStyle(fontWeight: bold, fontSize: number20),)), 
                                  DataColumn(label: Text("FOAM", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                  DataColumn(label: Text("ELITE", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                ], rows: [
                                  DataRow(cells: [DataCell(Text("HATCH", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹149", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹399", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹799", style: TextStyle(fontWeight: bold, fontSize: number20),))]),
                                  DataRow(cells: [DataCell(Text("SEDAN", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹169", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹449", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹899", style: TextStyle(fontWeight: bold, fontSize: number20),))]),
                                  DataRow(cells: [DataCell(Text("SUV", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹199", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹599", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹999", style: TextStyle(fontWeight: bold, fontSize: number20),))]),
                                  DataRow(cells: [DataCell(Text("PREMIUM", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹299", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹799", style: TextStyle(fontWeight: bold, fontSize: number20),)),
                                                  DataCell(Text("₹1299", style: TextStyle(fontWeight: bold, fontSize: number20),))])
                                ]),
                                SizedBox(height: number20),
                                Text("NOTE:"),
                                SizedBox(height: number10),
                                Text("ECO is normal water wash for outer", style: TextStyle(fontWeight: regular),),
                                SizedBox(height: number10),
                                Text("FOAM is clear foam wash for outer", style: TextStyle(fontWeight: regular),),
                                SizedBox(height: number10),
                                Text("ELITE is foam wash for inner+outer", style: TextStyle(fontWeight: regular),)
                              ]),
                        ),
                      ),
                    ]),
              ),
            ),
          ))),
    );
  }
}
