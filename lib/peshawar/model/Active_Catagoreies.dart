// ignore_for_file: unused_import, missing_return, equal_keys_in_map, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreActionsConnectionActiveCategory {
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

    
  ) async {
    return await gameCollection.doc().set({
      "Code": Code,
      "email": email,
      "image": image,
      "AddDate": AddDate,
      "Query": Query,
      "CategoriesName": CategoriesName,
      "Query2": Query2,
      
    });
  }
}
