import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoggedIn = false;
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async {
    try {
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
      });
    } catch (err) {
      print(err);
    }
  }

  _logout() {
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: _isLoggedIn
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        _googleSignIn.currentUser.photoUrl,
                        height: 50.0,
                        width: 50.0,
                      ),
                      Text(_googleSignIn.currentUser.displayName),
                      Text(_googleSignIn.currentUser.email),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: HexColor('#2E384D'),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Logout",
                            style: TextStyle(
                                color: HexColor('#FFFFFF'), fontSize: 12),
                          ),
                        ),
                        onPressed: () {
                          _logout();
                        },
                      )
                    ],
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Instagram",
                          style: TextStyle(
                            color: HexColor('#262626'),
                            fontFamily: 'Billabong',
                            fontSize: 45,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: HexColor('#2E384D'),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Text(
                              "LOGIN WITH GOOGLE",
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.ltr,
                              softWrap: true,
                              style: TextStyle(
                                  color: HexColor('#FFFFFF'), fontSize: 14),
                            ),
                          ),
                          onPressed: () {
                            _login();
                          },
                        ),
                      ],
                    ),
                  )));
  }
}
