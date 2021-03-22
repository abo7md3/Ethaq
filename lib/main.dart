import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/splash_page.dart';
import 'pages/home_page.dart';
import 'pages/electrician_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethaq',
      routes: <String, WidgetBuilder>{
       // "/": (context) => SplashPage(),
        //"/login": (context) => LoginPage(),
        "/": (context) => HomePage(),//


      },
      debugShowCheckedModeBanner: false,
    );
  }
}
