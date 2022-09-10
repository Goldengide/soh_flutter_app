import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/Home.dart';
import 'screens/DetailScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'SSOH App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Montserrat'
          ),
          initialRoute: '/',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            'homeScreen': (context) => const Home(),
            // When navigating to the "/second" route, build the SecondScreen widget.
            DetailScreen.routeName: (context) => const DetailScreen(),
          },
          home: child,
        ); 
      },
      
      child: Home(),
    );
    
  }
}


