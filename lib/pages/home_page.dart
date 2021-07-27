import 'package:ethaq1/pages/help_page.dart';
import 'package:ethaq1/pages/more_page.dart';
import 'package:ethaq1/pages/order_page.dart';
import 'package:ethaq1/pages/services_page.dart';
import 'package:flutter/material.dart';
import '../widgets/post_item.dart';
import '../pages/login_page.dart';
import '../pages/electrician_page.dart';
import '../pages/plumber_page.dart';
import '../pages/shipping_page.dart';
import '../pages/satellite_page.dart';
import '../repositories/auth_repository.dart';
class HomePage extends StatelessWidget {
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
        // leading: IconButton(
        //   icon: Image(
        //     image: AssetImage("assets/images/photo5947110223019881366.jpg"),
        //     //camera
        //     width: 100,
        //   ),
        //   onPressed: () {},
        // ),
        actions: <Widget>[
          Container(
            height: 90,
            child: SizedBox(
              width: 90,
              height: 90,
              child: IconButton(
                icon: Image(
                  image:
                      AssetImage("assets/images/photo5947110223019881366.jpg"),
                  //dm
                ),
                onPressed: ()  { Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));},
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Flexible(
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  children: <Widget>[
                    IconButton(
                      icon: Image(
                        image: AssetImage(
                            "assets/images/photo5927254567735637629.jpg"),
                        height: 140,
                        // width: 500,
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Plumber()));},
                    ),
                    IconButton(
                      icon: Image(
                        image: AssetImage(
                            "assets/images/photo5927254567735637631.jpg"),
                        height: 140,
                        // width: 500,
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Electrician()));},
                    ),
                    IconButton(
                      icon: Image(
                        image: AssetImage(
                            "assets/images/photo5927254567735637630.jpg"),
                        height: 140,
                        // width: 500,
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Shipping()));},
                    ),
                    IconButton(
                      icon: Image(
                        image: AssetImage(
                            "assets/images/photo5927254567735637633.jpg"),
                        height: 140,
                        // width: 500,
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Satellite()));},
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      width: 90,
                      height: 90,
                      child: IconButton(
                        icon: Image(
                          image: AssetImage(
                              'assets/images/photo5927254567735637635.jpg'),
                        ),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Order()));},
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: IconButton(
                        icon: Image(
                          image: AssetImage(
                              "assets/images/photo5927254567735637636.jpg"),
                        ),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Help()));},
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: IconButton(
                        icon: Image(
                          image: AssetImage(
                              "assets/images/photo5927254567735637638.jpg"),
                        ),
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Services()));},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
