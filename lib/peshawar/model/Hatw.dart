// ignore_for_file: unused_import, missing_return, equal_keys_in_map, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreActionsConnectionHatwData {
  final CollectionReference gameCollection =
      FirebaseFirestore.instance.collection("ActiveCategories");

  Future<void> InsertData(
    String Code,
    String email,
    String image,
    String AddDate,
    String Query,
    String CategoriesName,
    String Query2,
String NawiJor,
String Rang ,
String JmareyHatw ,
String NrxiHatwone ,
String NrxiFroshtnone ,
    String mater,
  ) async {
    return await gameCollection.doc().set({
      "Code": Code,
      "email": email,
      "image": image,
      "AddDate": AddDate,
      "Query": Query,
      "CategoriesName": CategoriesName,
      "Query2": Query2,
      "NawiJor": NawiJor,
      "Rang": Rang,
      "JmareyHatw": double.parse(JmareyHatw),
      "NrxiHatwone": double.parse(NrxiHatwone),
      "NrxiFroshtnone": double.parse(NrxiFroshtnone),
      "mater":mater,
      //img 1-2-3
      
    });
  }
}
