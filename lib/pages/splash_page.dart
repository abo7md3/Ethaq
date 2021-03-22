import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () => {
      Navigator.pushReplacementNamed(context, "/login")
    });
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage("assets/images/File_000.png"),
                  width: 250,
                  height: 250,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(colors: [
                      Color(0xFF2573E9),
                      Color(0xFF2573E9),
                    ]).createShader(
                        Rect.fromLTWH(0, 0, rect.width, rect.height));
                  },
                  child: Text(
                    "HELLO",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
