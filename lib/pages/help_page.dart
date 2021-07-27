import 'package:ethaq1/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/satellite_page.dart';
import '../pages/home_page.dart';
import '../pages/help_page.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        elevation: 1,
        backgroundColor: Color(0xfFF9F9F3),
        title: Image(
          image: AssetImage("assets/images/File_000-2.jpeg"),
          height: 40,
        ),
        leading: IconButton(
          icon: Image(
            image: AssetImage("assets/images/photo5960872552366715947.jpg"),
            //camera
            width: 25,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return LinearGradient(colors: [
                      Color(0xFF2573E9),
                      Color(0xFF2573E9),
                    ]).createShader(
                        Rect.fromLTWH(0, 0, rect.width, rect.height));
                  },
                  child: Text(
                    "  If you want help or have an\n"
                        "  inquiry, Contact us on 920000.\n  "
                        "Email: Ethaq_Comp@gmail.com",
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
        ,
      )
      ,
    );
  }
}
