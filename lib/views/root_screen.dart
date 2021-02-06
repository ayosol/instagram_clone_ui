import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone_ui/theme/colors.dart';
import 'package:instagram_clone_ui/util/bottom_nav_bar_json.dart';
import 'package:instagram_clone_ui/views/activity_screen.dart';
import 'package:instagram_clone_ui/views/home_screen.dart';
import 'package:instagram_clone_ui/views/profile_screen.dart';
import 'package:instagram_clone_ui/views/reels_screen.dart';
import 'package:instagram_clone_ui/views/search_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: _body(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  //Body of the Application ---> Every other Pages are Loaded here
  Widget _body() {
    return IndexedStack(
      index: pageIndex,
      children: [
        HomeScreen(),
        SearchScreen(),
        ReelsScreen(),
        ActivityScreen(),
        ProfileScreen(),
      ],
    );
  }

  // BottomNavBar for the Root of Application
  Widget _bottomNavBar() {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: appFooterColor,
      ),
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
              icons.length,
              (index) => IconButton(
                    onPressed: () {
                      setState(() {
                        pageIndex = index;
                      });
                    },
                    icon: SvgPicture.asset(
                      pageIndex == index
                          ? icons[index]['active']
                          : icons[index]['inactive'],
                      width: 25,
                      height: 25,
                    ),
                  )),
        ),
      ),
    );
  }
}
