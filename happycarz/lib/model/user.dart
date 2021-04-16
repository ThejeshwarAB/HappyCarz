// import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
class Customer{
  FirebaseUser user;
  String userName="";
  String mobileNumber="";
  String postalCode="";
  List<Transactions> transactions;

  void setUser(FirebaseUser user){
    this.user = user;
  }
}

class Transactions{
  String startDate;
  String endDate;
  String carNumber;
  String doorNumber;
  String apartmentName;
  String timeSlot;
  String service;
  String amount;
}