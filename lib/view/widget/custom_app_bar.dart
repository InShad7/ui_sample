import 'package:flutter/material.dart';
import 'package:ui/view/utils/controller.dart';
import 'package:ui/view/utils/utils.dart';
import 'package:ui/view/widget/category_card.dart';
import 'package:ui/view/widget/custom_curosel.dart';

import 'package:ui/view/widget/header_card.dart';
import 'package:ui/view/widget/product_item.dart';
import 'package:ui/view/widget/top_brands.dart';

Widget appbar2() {
  return Container(
    height: 90,
    width: mWidth,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: appBarGradientClr,
      ),
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(60),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(height: 20),
        Text(
          'Company',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Logo',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget appBar1() {
  return Container(
    width: mWidth! / 1.3,
    height: 200,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: appBarGradientClr,
        stops: const [0.25, 0.2],
      ),
    ),
  );
}

Widget header() {
  return Positioned(
    top: mHeight! / 9.3,
    child: Container(
      width: mWidth,
      height: 700,
      decoration: BoxDecoration(
        color: white,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(67)),
      ),
      child: Column(
        children: [
          const HeaderCard(),
          kHeight20,
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  CustomCurosel(),
                  CategoryCard(),
                  CustomCurosel(second: true),
                  TopBrands(),
                  ProductItem(),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
