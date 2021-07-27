import 'package:ethaq1/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/satellite_page.dart';
import '../pages/home_page.dart';
import '../pages/services_page.dart';

class Services extends StatelessWidget {
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
                    "    Welcome to ETHAQ application!\n\n "
                        "Here you can request services and \n"
                        " choose your favorite worker for that\n"
                        " job among a list of available workers.\n"
                        " Just select the service you wish and \n"
                        " select the desired worker for that "
                        "  service from the list and click\n             “Get Service”.",
                    style: TextStyle(
                        height: 1.2,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      letterSpacing: 2,
                    ),
                    // style: TextStyle(
                    //   color: Colors.white,
                    //   fontWeight: FontWeight.bold,
                    //
                    //   letterSpacing: 2,
                    // ),
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
