import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:instagram_clone_ui/theme/colors.dart';
import 'package:instagram_clone_ui/views/root_screen.dart';

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
      print(_googleSignIn.currentUser.email);
      print(_googleSignIn.currentUser.displayName);
      print(_googleSignIn.currentUser.photoUrl);
      if (_isLoggedIn) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RootScreen()));
      }
    } catch (err) {
      print(err);
    }
  }

  /* _logout() {
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }*/

  @override
  void initState() {
    if (_isLoggedIn) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RootScreen()));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Instagram",
            style: TextStyle(
              color: instaColor,
              fontFamily: 'Billabong',
              fontSize: 45,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: instaBtnColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "LOGIN WITH GOOGLE",
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                softWrap: true,
                style: TextStyle(color: white, fontSize: 14),
              ),
            ),
            onPressed: () {
              _login();
            },
          ),
        ],
      ),
    ));
  }
}
