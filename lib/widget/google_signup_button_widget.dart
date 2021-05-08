import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_signin_example/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(4),
        child: new RaisedButton(
            padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0),
            color: Colors.white,
            onPressed: () {
              final provider =
                  Provider.of<GoogleSignInProvider>(context, listen: false);
              provider.login();
            },
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Image.asset(
                  'images/Google.png',
                  height: 30.0,
                ),
                new Container(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: new Text(
                      "Sign in with Google",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )),
              ],
            )),
      );
}
