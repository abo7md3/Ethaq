import 'package:flutter/material.dart';
import 'package:ethaq1/pages/login_page.dart';
import 'package:ethaq1/pages/splash_page.dart';
import 'package:ethaq1/pages/home_page.dart';
import 'package:ethaq1/pages/electrician_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethaq',
      routes: <String, WidgetBuilder>{
         "/": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(), //


      },
      debugShowCheckedModeBanner: false,
    );
  }
}