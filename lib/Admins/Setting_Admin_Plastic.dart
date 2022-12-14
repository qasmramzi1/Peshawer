
// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unnecessary_new, curly_braces_in_flow_control_structures, unused_element, prefer_void_to_null, unnecessary_this, avoid_unnecessary_containers, camel_case_types, unused_local_variable, non_constant_identifier_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../peshawar/model/Active_Catagoreies.dart';
import '../peshawar/model/Signup_user_Model/modelSignup.dart';

import 'Menu/MenuAbov.dart';
import 'Setting_Admin.dart';
import 'Setting_Admin_Saqf.dart';


class Setting_Plastic extends StatefulWidget {
  const Setting_Plastic({Key? key}) : super(key: key);

  @override
  _Setting_PlasticState createState() => _Setting_PlasticState();
}

class _Setting_PlasticState extends State<Setting_Plastic> {
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
  String? name;
  //_JoriKashi
  final _JoriKashi = TextEditingController();
  String? JoriKashi;
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             //menu
             Container(
              height: 65,
              child: Expanded(child: Menu_Abov())),
             // Generated code for this Column Widget...
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  //btn
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () async {
                              Navigator.push(
                                context,
                                  MaterialPageRoute(builder: (context) => Setting_Plastic()),);
                            },
                            child: Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF18A9CF),
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '??????????????????????',
                                    style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              Navigator.push(
                                context,
                                  MaterialPageRoute(builder: (context) => Setting_Saqfsanawi()),);
                            },
                            child: Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF055A70),
                                
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '???????? ????????????',
                                    style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        //kashi
                          InkWell(
                            onTap: () async {
                              Navigator.push(
                                context,
                                  MaterialPageRoute(builder: (context) => Setting_Admin()),);
                            },
                            child: Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF055A70),
                                
                                borderRadius: BorderRadius.circular(9),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '????????',
                                    style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  //active
                  Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                                                      context: context,
                                                      builder: (context) => Center(
                                                      child: Padding(
                                                        padding: const EdgeInsets.only(
                                                          top: 0,
                                                          left: 0,
                                                          right: 0,
                                                          bottom: 0
                                                        ),
                                                        child: Container(
                                                          // color: Colors.white,
                                                          width: 350.0,
                                                          height: 200.0,
                                                          child: Dialog(
                                                          child: ListView(children: <Widget>[
                                                          Column(mainAxisSize: MainAxisSize.max, children: [
                                                          SingleChildScrollView(
                                                            child: Column(
                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                children: [
                                                                  // Generated code for this Container Widget...
                                                                //menu kashi zawe darewa
                                                                  //_JoriKashi
                                                                                                                              Padding(
                                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(15, 5, 15, 5),
                                                                                                                                child: TextFormField(
                                                                                                                                  controller: _JoriKashi,
                                                                                                                                  onChanged: (value) {
                                                                                                                                    setState(() {
                                                                                                                                      JoriKashi = value;
                                                                                                                                    });
                                                                                                                                  },
                                                                                                                                  autofocus: true,
                                                                                                                                  obscureText: false,
                                                                                                                                  decoration: InputDecoration(
                                                                                                                                    hintText: '???????? ??????????????????????',
                                                                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                                                                      borderSide: BorderSide(
                                                                                                                                        color: Colors.black,
                                                                                                                                        width: 1,
                                                                                                                                      ),
                                                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                                                        topRight: Radius.circular(4.0),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                                                                      borderSide: BorderSide(
                                                                                                                                        color: Colors.black,
                                                                                                                                        width: 1,
                                                                                                                                      ),
                                                                                                                                      borderRadius: const BorderRadius.only(
                                                                                                                                        topLeft: Radius.circular(4.0),
                                                                                                                                        topRight: Radius.circular(4.0),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  textAlign: TextAlign.end,
                                                                                                                                ),
                                                                                                                              ),
                                                                
                                                                //save btn jor
                                                                                                                          Padding(
                                                                                                                              padding: const EdgeInsets.all(8.0),
                                                                                                                              child: Container(
                                                                                                                                  width: MediaQuery.of(context).size.width,
                                                                                                                                  height: 40,
                                                                                                                                  child: ButtonTheme(
                                                                                                                                    // ignore: deprecated_member_use
                                                                                                                                    child: ElevatedButton(
                                                                                                                                        onPressed: () async {
                                                                                                                                          // snapshot.data.docs[index].reference.delete();
                                                                                                                                          // _Jor.text = data.data()['Jor'].toString();
                                                                                                                                          FirestoreActionsConnectionActiveCategory().InsertData(
                                                                                                                                            "${loggedInUser.Code}",
                                                                                                                                            "${loggedInUser.email}",
                                                                                                                                            "${loggedInUser.image}",
                                                                                                                                            "${selectedDate.toLocal()}".split(' ')[0],
                                                                                                                                            "Dar-Plastic",
                                                                                                                                          
                                                                                                                                          _JoriKashi.text,
                                                                                                                                          "Categories",
                                                                                                                                          
                                                                                                                                          );
                                                                                                                                          Navigator.push(
                                                                                                                                            context,
                                                                                                                                            MaterialPageRoute(builder: (context) => Setting_Plastic()),
                                                                                                                                          );
                                                                                                                                        },
                                                                                                                                        child: Text(
                                                                                                                                          '??????????????????',
                                                                                                                                          style: TextStyle(
                                                                                                                                            color: Colors.white,
                                                                                                                                            fontWeight: FontWeight.bold,
                                                                                                                                          ),
                                                                                                                                        )),
                                                                                                                                  ))),
                                                                                                                      
                                                                ]))])]))))));
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                  //stream Active
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 325,
                            height: 350,
                            decoration: BoxDecoration(
                              color: Color(0xFF232323),
                            ),
                            child: StreamBuilder<QuerySnapshot>(
                                            stream: (name != 'FollowUP' && name != 'FollowUP')
                                                ? //
                                                FirebaseFirestore.instance
                                                    .collection('ActiveCategories') //
                                                    .where('Code',isEqualTo: "${loggedInUser.Code}") //
                                                    .where('Query', isEqualTo: 'Dar-Plastic') //
                                                    .where('Query2',isEqualTo: 'Categories') //
                                                    .snapshots()
                                                : //
                                                FirebaseFirestore.instance
                                                    .collection("HomePost") //
                                                    .snapshots(), //
                                            builder: (context, snapshot) {
                                              return (snapshot.connectionState ==
                                                      ConnectionState.waiting)
                                                  ? Center(child: CircularProgressIndicator())
                                                  : ListView.builder(
                                                      //scrollDirection: Axis.horizontal,
                                                      itemCount: snapshot.data!.docs.length,
                                                      itemBuilder: (context, index) {
                                                        DocumentSnapshot data =
                                                            snapshot.data!.docs[index];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 320,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF303030),
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(
                                            color: Color(0xFFAEE60E),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            //delete
                                            InkWell(
                                              onTap: () async {
                                                showDialog(
                                                              context: context,
                                                              builder: (context) => Center(
                                                                child: Container(
                                                                  
                                                                  width: 300.0,
                                                                height: 150.0,
                                                                child: Dialog(
                                                                child: ListView(children: <Widget>[
                                                                  Column(mainAxisSize: MainAxisSize.max, children: [
                                                                    Text('???????????????????? ?????????????? ????????????????????'),
                                                                    //delete btn jor
                                                                                                                          Padding(
                                                                                                                              padding: const EdgeInsets.all(8.0),
                                                                                                                              child: Container(
                                                                                                                                  width: MediaQuery.of(context).size.width,
                                                                                                                                  height: 40,
                                                                                                                                  child: ButtonTheme(
                                                                                                                                    // ignore: deprecated_member_use
                                                                                                                                    child: ElevatedButton(
                                                                                                                                        onPressed: () async {
                                                                                                                                          snapshot.data!.docs[index].reference.delete();
                                                                                                                                          
                                                                                                                                          Navigator.push(
                                                                                                                                            context,
                                                                                                                                            MaterialPageRoute(builder: (context) => Setting_Plastic()),
                                                                                                                                          );
                                                                                                                                        },
                                                                                                                                        child: Text(
                                                                                                                                          '????????????????????',
                                                                                                                                          style: TextStyle(
                                                                                                                                            color: Colors.white,
                                                                                                                                            fontWeight: FontWeight.bold,
                                                                                                                                          ),
                                                                                                                                        )),
                                                                                                                                  ))),
                                                                                                                      
                                                                  ])])))));
                                              
                                              },
                                              child: Icon(
                                                Icons.delete_forever,
                                                color: Color(0xFFFE2B2B),
                                                size: 24,
                                              ),
                                            ),
                                            Container(
                                              width: 125,
                                              height: 100,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF303030),
                                              ),
                                              child: InkWell(
                                                onTap: () async {},
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      data['CategoriesName'].toString(),
                                                      style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            color: Colors.white,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });}
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )

            ],
          ),
        ),
      ),
    );
  }
}
