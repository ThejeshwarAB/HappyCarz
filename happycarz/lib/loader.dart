import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:happycarz/constants.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Container(
      color: transparent,
      child: Center(
        child: SpinKitThreeBounce(
          color: darkPurple,
          size: 50.0,
        ),
      ),
    );
  }
}