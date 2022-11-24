// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, library_private_types_in_public_api, unnecessary_new, unused_field, prefer_final_fields, avoid_unnecessary_containers


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'main.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isObscure3 = true;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  late String errorMessage;
 
    bool _isObscure = true;
  bool _isObscure2 = true;
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 120,
                        height: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://picsum.photos/seed/577/600',
                         //'blob:https://mega.nz/c5c139c2-98b0-42c7-910f-c4ef30d32cea',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                   //login
                    Container(
                      width: 325,
                      height: 270,
                      decoration: BoxDecoration(
                        color: Color(0xFF232323),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                                    child: Form(
                            key: _formKey,
                            child: Column(children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Email',
                                  style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFAEE60E),
                                      ),
                                ),
                              ],
                            ),
                          ),
                          //email field
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                            child: Container(
                              width: 315,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF373737),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                child: 
                                   TextFormField(
                                      controller: emailController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        

                                        labelStyle: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 70, 68, 68),
                                            fontSize: 16,
                                            fontFamily: "verdana_regular",
                                            fontWeight: FontWeight.bold),
                                        hintStyle: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 70, 68, 68),
                                            fontSize: 16,
                                            fontFamily: "verdana_regular",
                                            fontWeight: FontWeight.bold),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        //fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional
                                                .fromSTEB(20, 24, 20, 24),
                                      ),
                                      validator: (value) {
                                        if (value!.length == 0) {
                                          return "Email cannot be empty";
                                        }
                                        if (!RegExp(
                                                "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                            .hasMatch(value)) {
                                          return ("Please enter a valid email");
                                        } else {
                                          return null;
                                        }
                                      },
                                      onSaved: (value) {
                                        emailController.text = value!;
                                      },
                                      keyboardType: TextInputType.emailAddress,

                                      // style: FlutterFlowTheme.of(context).bodyText1,
                                    ),
                                  
                                
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Password',
                                  style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFAEE60E),
                                      ),
                                ),
                              ],
                            ),
                          ),
                          //pass field
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                            child: Container(
                              width: 315,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF373737),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                                child:  TextFormField(
                                      controller: passwordController,
                                  obscureText: _isObscure,
                                      decoration: InputDecoration(
                                        labelStyle: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 70, 68, 68),
                                            fontSize: 16,
                                            fontFamily: "verdana_regular",
                                            fontWeight: FontWeight.bold),
                                        hintStyle: const TextStyle(
                                            color:
                                                Color.fromARGB(255, 70, 68, 68),
                                            fontSize: 22,
                                            fontFamily: "verdana_regular",
                                            fontWeight: FontWeight.bold),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        filled: true,
                                        suffixIcon: IconButton(
                                            icon: Icon(_isObscure
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                            onPressed: () {
                                              setState(() {
                                                _isObscure = !_isObscure;
                                              });
                                            }),
                                        //fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                        contentPadding:
                                            const EdgeInsetsDirectional
                                                .fromSTEB(20, 24, 20, 24),
                                      
                                        //fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                      ),
                                      validator: (value) {
                                        RegExp regex = new RegExp(r'^.{6,}$');
                                        if (value!.isEmpty) {
                                          return "Password cannot be empty";
                                        }
                                        if (!regex.hasMatch(value)) {
                                          return ("please enter valid password min. 6 character");
                                        } else {
                                          return null;
                                        }
                                      },
                                     
                                      //keyboardType: TextInputType.emailAddress,
                                      // style: FlutterFlowTheme.of(context).bodyText1,
                                    ),
                              ),
                            ),
                          ),
                         //btn login
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    setState(() {
                                          visible = true;
                                        });
                                        signIn(emailController.text,
                                            passwordController.text);
                                  },
                                  child: Container(
                                    width: 125,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF373737),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.login,
                                            color: Color(0xFFAEE60E),
                                            size: 24,
                                          ),
                                          Text(
                                            'Login',
                                            style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFAEE60E),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])))],
                      ),
                    ),
                   //binin
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: Container(
                              width: 125,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF373737),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: InkWell(
                                onTap: () async {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'پیشەوەر',
                                      style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                    Icon(
                                      Icons.group_add,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: Container(
                              width: 125,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF373737),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: InkWell(
                                onTap: () async {},
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    // ignore: prefer_const_constructors
                                    Text(
                                      'بینین',
                                      style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                    ),
                                    Icon(
                                      Icons.phonelink_ring,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
void signIn(String email, String password) async {
 if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
                  Fluttertoast.showToast(msg: "Login Successful"),
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>MainScreen()),) //Signin_Role())),
                });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage);
        print(error.code);
      }
    }
 }
}