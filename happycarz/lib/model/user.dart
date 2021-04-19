import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';

class Customer{
  FirebaseUser user;
  String name="";
  String mobile="";
  String postal="";
  bool newUser = true;
  bool currentStatus = false;
  List<Transactions> transactions;

  void setUser(FirebaseUser user){
    this.user = user;
  }

  void fromRegisterPage(List<String> data){

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