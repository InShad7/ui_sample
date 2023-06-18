import 'package:flutter/material.dart';
import 'package:ui/view/utils/controller.dart';
import 'package:ui/view/utils/utils.dart';
import 'package:ui/view/widget/main_scree.dart';
import 'package:ui/view/widget/menu_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mHeight = MediaQuery.of(context).size.height;
    mWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ZoomDrawer(
        menuBackgroundColor: blueShade7,
        controller: zoomDrawerController,
        menuScreen: MenuScreen(),
        mainScreen: const MainScreen(),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        drawerShadowsBackgroundColor: grey,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
      ),
    );
  }
}
