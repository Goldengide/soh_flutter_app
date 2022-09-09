import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/Home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return ScreenUtilInit(
    //   designSize: Size(360, 690),
    //   minTextAdapt: true,
    //   splitScreenMode: true,
    //   builder: (context, child) => 
    // )
    return MaterialApp(
      title: 'SSOH App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat'
      ),
      home: Home(),
    );
  }
}


