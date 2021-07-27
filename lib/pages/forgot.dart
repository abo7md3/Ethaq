import 'package:ethaq1/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../repositories/auth_repository.dart';
import '../widgets/my_flat_button.dart';
import '../widgets/my_text_field.dart';
import '../pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
class ForgotPage extends StatefulWidget {

  final AuthRepository _auth = AuthRepository.instance;

  @override
  _ForgotPage createState() => _ForgotPage();
}

class _ForgotPage extends State<ForgotPage> {
  String _email = "";
 // String _password = "";
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image:
                  AssetImage("assets/images/File_000-2.jpeg"),
                  width: 210,
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: MyTextField(
                    textInputType: TextInputType.emailAddress,
                    hint: "Email",
                    onChange: (value) {
                      setState(() {
                        _email = value;
                      });
                    },
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.only(top: 10),
                //   child: MyTextField(
                //     isPassword: true,
                //     hint: "new Password",
                //     onChange: (value) {
                //       setState(() {
                //        // _password = value;
                //       });
                //     },
                //   ),
                // ),

                Container(
                  margin: EdgeInsets.only(top: 48),
                  child: FractionallySizedBox(
                    widthFactor: 1,
                    child: MyFlatButton(
                      "get password",
                      onPressed: () {
                        NewPass(_email);
                      },
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  //async
  // ignore: non_constant_identifier_names
  NewPass(_email)  {


      widget._auth.forgotPas(_email);
      Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));

  }



  showSnackBar(String message) {
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
