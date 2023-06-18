import 'package:flutter/material.dart';
import 'package:ui/view/utils/utils.dart';
import 'package:ui/view/widget/custom_app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Stack(
        children: [
          kHeight0,
          appBar1(),
          appbar2(),
          header(),
        ],
      ),
    );
  }
}
