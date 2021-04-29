import 'package:cloud_firestore/cloud_firestore.dart';
// import 'user.dart';

final databaseReference = Firestore.instance;

Future<void> addCustomerData(Map<String,dynamic> _mapValue) async {
  await databaseReference.collection("customers").document(_mapValue["id"]).updateData(_mapValue);
}

Future<void> addTransactionData(Map<String,dynamic> _mapValue) async {
  await databaseReference.collection("customers").document(_mapValue["id"]).updateData({"transactions": FieldValue.arrayUnion([_mapValue])});
}