import 'package:cloud_firestore/cloud_firestore.dart';
// import 'user.dart';

final databaseReference = Firestore.instance;

Future<String> addCustomerData(Map<String,dynamic> _mapValue) async {
  // DocumentReference ref = await databaseReference.collection("customers")
  //     .add(_mapValue);
  // print(ref.documentID);
  // return ref.documentID.toString();
  return "123";
}

Future<String> addTransactionData() async{
  //   DocumentReference ref = await databaseReference.collection("customers")
  //     .add({
  //       'title': 'Flutter Transaction',
  //     });
  // print(ref.documentID);
  // return ref.documentID.toString();
  return "123";
}