import 'package:flutter/material.dart';
import 'package:happycarz/constants.dart';
import 'package:happycarz/views/dashboard.dart';

// ignore: must_be_immutable
class RegisterPage extends StatefulWidget {
  String area;
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // top part of the screen
        appBar: AppBar(
          title: Text("HappyCarz"),
          centerTitle: true,
          elevation: 20,
          backgroundColor: darkTextColor,
        ),
        // content of the screen
        backgroundColor: lightTextColor,
        // extendBodyBehindAppBar: true,
        // resizeToAvoidBottomInset : false,
        body: Center(
            // DecorationImage(image: AssetImage("assets/images/background.png")),
            child: Container(
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Form(
                  child: Column(children: <Widget>[
                    Text(
                      "WE ARE GLAD TO KNOW",
                      style: TextStyle(
                          color: darkTextColor,
                          fontSize: 1.5 * normalFontSize,
                          fontWeight: boldFont),
                    ),
                    SizedBox(height: paddingValue),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          paddingValue + 30, 0, paddingValue + 30, 0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        cursorColor: Colors.transparent,
                        cursorWidth: 0,
                        decoration: InputDecoration(
                          fillColor: secondaryColor,
                          focusColor: lightTextColor,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: secondaryColor),
                              borderRadius:
                                  BorderRadius.circular(buttonRadius)),
                          focusedBorder: OutlineInputBorder(
                              // borderSide: ,
                              borderSide:
                                  BorderSide(width: 0, color: secondaryColor),
                              borderRadius:
                                  BorderRadius.circular(buttonRadius)),
                          // labelText: 'Enter your name',
                          hintText: 'Tell us your name',
                          labelStyle: TextStyle(
                              color: darkTextColor, fontFamily: fontName),
                          hintStyle: TextStyle(
                              color: darkTextColor,
                              fontFamily: fontName,
                              fontWeight: boldFont),
                        ),
                      ),
                    ),
                    SizedBox(height: paddingValue),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          paddingValue + 30, 0, paddingValue + 30, 0),
                      child: TextFormField(
                        // enableInteractiveSelection: true,
                        cursorColor: Colors.transparent,
                        cursorWidth: 0,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          fillColor: secondaryColor,
                          focusColor: lightTextColor,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0, color: secondaryColor),
                              borderRadius:
                                  BorderRadius.circular(buttonRadius)),
                          focusedBorder: OutlineInputBorder(
                              // borderSide: ,
                              borderSide:
                                  BorderSide(width: 0, color: secondaryColor),
                              borderRadius:
                                  BorderRadius.circular(buttonRadius)),
                          // labelText: 'Enter your name',
                          hintText: 'Your phone number',
                          labelStyle: TextStyle(
                              color: darkTextColor, fontFamily: fontName),
                          hintStyle: TextStyle(
                              color: darkTextColor,
                              fontFamily: fontName,
                              fontWeight: boldFont),
                          // prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    SizedBox(height: paddingValue),
                    Container(
                      // style: TextStyle(fontWeight: boldFont),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(buttonRadius)),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            paddingValue + 30, 5, paddingValue + 30, 5),
                        child: DropdownButton<String>(
                            style: TextStyle(
                                fontSize: normalFontSize,
                                fontFamily: fontName,
                                fontWeight: boldFont,
                                color: darkTextColor),
                            value: widget.area,
                            // icon: Icon(Icons.map),
                            // prefixIcon: Icon(Icons.phone),
                            iconSize: 0,
                            // underline: SizedBox(),
                            onChanged: (String newValue) {
                              setState(() {
                                widget.area = newValue;
                              });
                            },
                            items: areasList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: widget.area,
                                child: Text(value),
                              );
                            }).toList()),
                      ),
                    ),
                    SizedBox(height: paddingValue),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                new BorderRadius.circular(buttonRadius)),
                        padding: EdgeInsets.all(paddingValue),
                        color: darkTextColor,
                        child: Text(
                          "REGISTER WITH US",
                          style: TextStyle(
                              fontSize: normalFontSize,
                              fontWeight: boldFont,
                              color: lightTextColor),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DashboardPage()),
                          );
                        })
                  ]),
                )
              ]),
        )));
  }
}
