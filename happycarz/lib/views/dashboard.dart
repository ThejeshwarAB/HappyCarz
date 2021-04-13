import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/views/login.dart';
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
        elevation: 20,
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
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: secondaryColor, borderRadius: BorderRadius.vertical()),
              // color: secondaryColor,
              child: Text(
                "WELCOME BACK, USER",
                style: TextStyle(
                    color: darkTextColor,
                    fontSize: normalFontSize,
                    fontWeight: boldFont),
              ),
            ),
            Expanded(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(height: paddingValue),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(buttonRadius),
                      color: backgroundColor,
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(paddingValue * 2,
                        paddingValue * 3, paddingValue * 2, paddingValue * 3),
                    width: double.maxFinite,
                    child: Text(
                      "The BEST car wash service in CHENNAI",
                      style: TextStyle(
                          fontSize: 1 * normalFontSize,
                          color: darkTextColor,
                          fontWeight: boldFont),
                    ),
                  ),
                  SizedBox(height: paddingValue),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(buttonRadius),
                      color: backgroundColor,
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(paddingValue * 2,
                        paddingValue * 3, paddingValue * 2, paddingValue * 3),
                    width: double.maxFinite,
                    child: Text(
                      "Quality expertise and customer support",
                      style: TextStyle(
                          fontSize: 1 * normalFontSize,
                          color: darkTextColor,
                          fontWeight: boldFont),
                    ),
                  ),
                  SizedBox(height: paddingValue),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(buttonRadius),
                      color: backgroundColor,
                    ),
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(paddingValue * 2,
                        paddingValue * 3, paddingValue * 2, paddingValue * 3),
                    width: double.maxFinite,
                    child: Text(
                      "Over 10, 000 car washes per week*",
                      style: TextStyle(
                          fontSize: 1 * normalFontSize,
                          color: darkTextColor,
                          fontWeight: boldFont),
                    ),
                  ),
                  // SizedBox(height: paddingValue),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "HURRY NOW\nTry our service with one click!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 1.5 * normalFontSize,
                          color: Colors.red[700],
                          fontWeight: boldFont,
                          letterSpacing: 2),
                    ),
                  ),
                  // SizedBox(height: paddingValue),
                  Container(
                    width: double.infinity,
                    color: darkTextColor,
                    child: OutlineButton(
                        child: Text(
                          "BOOK A WASH",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: normalFontSize,
                              color: lightTextColor,
                              fontWeight: boldFont),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        }),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
