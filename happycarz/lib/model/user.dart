// import 'package:flutter/material.dart';

class User{
  // FireBase user;
  String userName;
  String mobileNumber;
  String postalCode;
  List<Transactions> transactions;
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