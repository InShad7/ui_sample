import 'package:flutter/material.dart';
import 'package:ui/view/home_screen/home_screen.dart';
import 'package:ui/view/widget/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomNavigationBarPage());
  }
}
