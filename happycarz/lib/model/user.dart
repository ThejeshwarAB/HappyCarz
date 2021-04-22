import 'package:firebase_auth/firebase_auth.dart';
import 'data.dart';

class Customer{
  FirebaseUser user;
  String name="";
  String mobile="";
  String postal="";
  String id="";
  bool currentStatus = false;
  List<Transactions> transactions;

  void setUser(FirebaseUser user){
    this.user = user;
  }

    void setId(String id){
    this.id = id;
  }

  Future<String> fromRegisterPage(Map<String, dynamic> _mapValue){
    return addCustomerData(_mapValue);
  }

  // Future<void> fromCheckoutPage(){
  //   addTransactionData();
  //   return null;
  // }
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