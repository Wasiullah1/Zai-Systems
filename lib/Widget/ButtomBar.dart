import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


import '../View/Courses_Page.dart';
import '../View/profile_screen.dart';
import '../View/team.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final _pageOption  = <Widget>[
    // home
    Courses(), // courses
    Team(),// Team
    ProfileScreen()// profile
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pageOption[_selectedIndex],

      bottomNavigationBar: CurvedNavigationBar(
        height: 65.0, // height of navigation bar
        backgroundColor: Colors.black,
        buttonBackgroundColor: Colors.white, // default white
        // color: Colors.white,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        }, letIndexChange: (index) => true,
        items:  const <Widget>[
          Icon(
            Icons.home,
            // color: Color(0xff810000),
          ), // home
          Icon(
            Icons.library_books,
            // color: Color(0xff810000),
          ), // books
          Icon(
            Icons.group,
            // color: Color(0xff810000),
          ),
          Icon(
            Icons.person,
            // color: Color(0xff810000),
          ),  // profile
        ],
      ),
    );
  }
}
