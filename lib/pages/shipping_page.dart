import 'package:ethaq1/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/shipping_page.dart';
import '../pages/order_page.dart';
import '../pages/getService_page.dart';

class Shipping extends StatelessWidget {
  List lsImg = ["assets/images/photo5960872552366716087.jpg","assets/images/photo5960872552366716087.jpg"
    ,"assets/images/photo5960872552366716087.jpg","assets/images/photo5960872552366716087.jpg"];
  List lsTxt1 = ["Abdulmajid","Yaser","Mohamed","Omare"];
  List lsTxt2 = ["Abdulmajid is ready to ship","Yaser is ready to ship",
    "Mohamed is ready to ship","Omare is ready to ship"];
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
          child: ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) => Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 55,
                            height: 55,
                            // color: Colors.deepPurple,
                            child: CircleAvatar(
                              backgroundColor: Colors.deepPurple,
                              foregroundColor: Colors.deepPurple,
                              backgroundImage: AssetImage(lsImg[index]),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                lsTxt1[index],
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                lsTxt2[index],
                                style: TextStyle(color: Colors.deepPurple),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Order()));
                          },
                          color: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Text(
                            "service",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

  }
  // Synd_A(){
  //   String x1="hi";
  //   //Navigator.push(context, new MaterialPageRoute(builder:  context => new Order(x1)));
  //   Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
  // }
}
