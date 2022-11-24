// ignore_for_file: library_private_types_in_public_api, camel_case_types, unused_local_variable, annotate_overrides, use_build_context_synchronously, avoid_print, unrelated_type_equality_checks, dead_code, unused_import, prefer_const_constructors

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'peshawar/peshawarlogin/Login_kurdkhana.dart';
import 'peshawar/peshawarlogin/Singnin_role.dart';
import 'peshawar/peshawarlogin/auth_helper.dart';





Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
       apiKey: 'AIzaSyCl52HlLTrVkWZf7Ysvln_SKYyIg1fL9sc',
       appId: '1:505312637640:android:0ced77fb08022063db6bfd', 
       messagingSenderId: '',
       projectId: 'peshawarapp'
        ),
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
 void logout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>const MainScreen()),);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
      ),
      home: const 
      
       MainScreen()//SignIN_Screen(),
    );
  }
}
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            UserHelper.saveUser(snapshot.data!);
            return StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection("users")
                  .doc(snapshot.data!.uid)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                    return  Signin_Role();
               
              },
            );
          }
          return const HomeScreen();
        });
  }
}

