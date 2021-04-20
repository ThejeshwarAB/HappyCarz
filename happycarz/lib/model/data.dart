import 'package:cloud_firestore/cloud_firestore.dart';

final databaseReference = Firestore.instance;

Future<String> addCustomerData() async {
  DocumentReference ref = await databaseReference.collection("customers")
      .add({
        'title': 'Flutter Customer',
      });
  print(ref.documentID);
  return ref.documentID.toString();
}

Future<String> addTransactionData() async{
    DocumentReference ref = await databaseReference.collection("customers")
      .add({
        'title': 'Flutter Transaction',
      });
  print(ref.documentID);
  return ref.documentID.toString();
}