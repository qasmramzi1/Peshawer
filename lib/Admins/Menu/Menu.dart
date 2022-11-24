// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, duplicate_ignore, library_private_types_in_public_api


import 'package:flutter/material.dart';

import '../Home_Screen_Admin.dart';
import '../Setting_Admin.dart';


class MenuPageAdminWidget extends StatefulWidget {
  const MenuPageAdminWidget({Key? key}) : super(key: key);

  @override
  _MenuPageAdminWidgetState createState() => _MenuPageAdminWidgetState();
}

class _MenuPageAdminWidgetState extends State<MenuPageAdminWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Name',
                            style:
                                TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF12A9F5),
                                    ),
                          ),
                          Text(
                            'Email',
                            style:
                                TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF12A9F5),
                                    ),
                          ),
                          Text(
                            'Role',
                            style:
                                TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF12A9F5),
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
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
                          'https://picsum.photos/seed/759/600',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider( thickness: 1,color: Color(0xFF12A9F5),),
              //Home
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: InkWell(
                  onTap: () async {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>const HomeScreenAdminWidget()),);
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF303030),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // ignore: prefer_const_constructors
                              Text(
                                'ســـــەرەتا',
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFAEE60E),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.home,
                            color: Color(0xFFF1B50B),
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
             //Setting
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: InkWell(
                  onTap: () async {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>const Setting_Admin()),);
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF303030),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // ignore: prefer_const_constructors
                              Text(
                                'ڕێکخســــتن',
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFAEE60E),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.settings_suggest_outlined,
                            color: Color(0xFFF1B50B),
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            //Setting
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: InkWell(
                  onTap: () async {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) =>const Setting_Admin()),);
                  },
                  child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF303030),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFF303030),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // ignore: prefer_const_constructors
                              Text(
                                'کــڕیـــــن',
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFAEE60E),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: Color(0xFFF1B50B),
                            size: 24,
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
      ),
    );
  }
}
