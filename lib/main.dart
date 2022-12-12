import 'package:angle_calculater/moduels/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'moduels/result_Screen.dart';

void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:AppBarTheme(
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.blueGrey[500],
            statusBarIconBrightness: Brightness.light,
          ),
          backgroundColor: Colors.blueGrey[500],
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ) ,
        drawerTheme: DrawerThemeData(
          backgroundColor: Colors.blueGrey,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}


