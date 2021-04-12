import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
// import 'login.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HappyCarz"),
        centerTitle: true,
        elevation: 2,
        backgroundColor: darkTextColor,
      ),
      // content of the screen
      backgroundColor: lightTextColor,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
              // colorFilter:
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1), BlendMode.dstATop)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // SizedBox(height: 2 * paddingValue),
            // Text(
            //   "WELCOME BACK, USER",
            //   style: TextStyle(
            //       color: darkTextColor,
            //       fontSize: 1.5 * normalFontSize,
            //       fontWeight: boldFont),
            // ),
            // SizedBox(height: 2 * paddingValue),
            // Expanded(
              Container(
                padding: EdgeInsets.all(25),
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.vertical()),
                // color: secondaryColor,
                child: Text(
                  "WELCOME BACK, USER",
                  style: TextStyle(
                      color: darkTextColor,
                      fontSize: 1.5 * normalFontSize,
                      fontWeight: boldFont),
                ),
              ),
            // ),
            
            // Column(
            //   children: <Widget>[]
            // )
          ],
        ),
      ),
    );
  }
}
