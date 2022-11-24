
// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_new, curly_braces_in_flow_control_structures, unused_element, prefer_void_to_null, unnecessary_this, avoid_unnecessary_containers

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../peshawar/model/Signup_user_Model/modelSignup.dart';
import 'Menu/Menu.dart';
import 'Menu/MenuAbov.dart';


class HomeScreenAdminWidget extends StatefulWidget {
  const HomeScreenAdminWidget({Key? key}) : super(key: key);

  @override
  _HomeScreenAdminWidgetState createState() => _HomeScreenAdminWidgetState();
}

class _HomeScreenAdminWidgetState extends State<HomeScreenAdminWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
 User? user = FirebaseAuth.instance.currentUser;
 UserModel loggedInUser = UserModel();
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
    initUser();
  }

  void initUser() {}
///////////////////////
  DateTime selectedDate = DateTime.now();
  //final berlinWallFell = DateTime.utc(1989, 11, 9);
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2019, 1),
        lastDate: DateTime(2111));
    if (picked != null)
      setState(() {
        selectedDate = picked;
      });
  }



  final fs = FirebaseFirestore.instance;
  final TextEditingController message = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF232323),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
             //menu
             Container(child: Expanded(child: Menu_Abov())),
             
            ],
          ),
        ),
      ),
    );
  }
}
