import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ui/view/home_screen/home_screen.dart';
import 'package:ui/view/utils/utils.dart';

class BottomNavigationBarPage extends StatefulWidget {
  @override
  _BottomNavigationBarPageState createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  int _bottomNavIndex = 0;
  List<IconData> iconList = [
    Icons.home_filled,
    Icons.search,
    Icons.grid_view_outlined,
    Icons.person_outline,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const HomeScreen(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(204, 46, 26, 1),
          onPressed: () {},
          child:const Icon(Icons.shopping_cart),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(10, 62, 137, 1),
                Color.fromRGBO(29, 115, 172, 1)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 1.6],
            ),
          ),
          child: AnimatedBottomNavigationBar(
              icons: iconList,
              activeIndex: _bottomNavIndex,
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.smoothEdge,
              onTap: (index) => setState(() => _bottomNavIndex = index),
              backgroundColor: Colors.transparent,
              activeColor: white,
              inactiveColor: white),
        ),
      ),
    );
  }
}
