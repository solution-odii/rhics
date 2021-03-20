import 'package:flutter/material.dart';
import 'package:rhics/Constants/AppColors.dart';
import 'package:rhics/Login/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rhics Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.materialColor1,
        fontFamily: 'SF Display Regular',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
