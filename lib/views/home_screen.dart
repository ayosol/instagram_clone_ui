import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        body: Center(
          child: Text("This is Home Page for the Feed"),
        ));
  }

  Widget myAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: HexColor("#F5F6FA"),
      centerTitle: true,
      title: Text(
        "Instagram",
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Billabong',
          fontSize: 30,
        ),
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Feather.plus_circle,
          color: Colors.black,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.message_circle,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
