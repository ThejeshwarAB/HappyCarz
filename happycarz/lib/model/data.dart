import 'package:cloud_firestore/cloud_firestore.dart';
// import 'user.dart';

final databaseReference = Firestore.instance;

Future<void> addCustomerData(Map<String,dynamic> _mapValue) async {
  await databaseReference.collection("customers").document(_mapValue["id"]).setData(_mapValue);
}