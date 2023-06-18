import 'package:flutter/material.dart';
import 'package:ui/view/utils/utils.dart';
import 'package:ui/view/widget/card_details.dart';
import 'package:ui/view/widget/img_and_fav.dart';

class HomeItemTile extends StatelessWidget {
  const HomeItemTile({super.key, this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: grey,
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(3, 9),
          ),
        ],
        color: white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        productImgAndFav(index),
        const Spacer(),
        cardDetails(index),
      ]),
    );
  }
}
