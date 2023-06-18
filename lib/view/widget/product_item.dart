import 'package:flutter/material.dart';
import 'package:ui/view/utils/utils.dart';
import 'package:ui/view/widget/custom_text.dart';
import 'package:ui/view/widget/home_item_tile.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        kHeight,
        customText(
          title: 'Popular Products',
          size: 22,
          fWeight: FontWeight.bold,
        ),
        kHeight20,
        Container(
          decoration: const BoxDecoration(
            // color: Colors.amber,
            image: DecorationImage(
              image: AssetImage(
                'assets/bg.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: (mHeight > 925) ? 0.68 : 0.58,
                ),
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return HomeItemTile(index: index);
                }),
          ),
        ),
        const SizedBox(
          height: 70,
        )
      ],
    );
  }
}
