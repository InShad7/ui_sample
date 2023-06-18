import 'package:flutter/material.dart';
import 'package:ui/view/utils/controller.dart';
import 'package:ui/view/utils/utils.dart';
import 'package:ui/view/widget/custom_text.dart';

class TopBrands extends StatelessWidget {
  const TopBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        kHeight,
        customText(
          title: 'Top Brands',
          size: 22,
          fWeight: FontWeight.bold,
        ),
        kHeight,
        Container(
          height: 290,
          color: topBrandColor,
          child: Column(
            children: [
              brandCard(),
              brandCard(),
              brandCard(),
              brandCard(),
            ],
          ),
        ),
      ],
    );
  }

  Widget brandCard() {
    return SizedBox(
      height: 70,
      child: ListView.builder(
          itemCount: 6,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(4),
              margin: const EdgeInsets.all(4),
              width: 115,
              child: Chip(
                elevation: 6,
                backgroundColor: white,
                label: Image.asset(
                  brandImg[index],
                  height: 40,
                ),
              ),
            );
          }),
    );
  }
}
