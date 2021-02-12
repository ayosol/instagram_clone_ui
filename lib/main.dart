import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/theme/colors.dart';
import 'package:instagram_clone_ui/views/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: appBgColor),
      home: LoginScreen(),
    );
  }
}
