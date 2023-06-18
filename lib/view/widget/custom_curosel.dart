import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui/view/utils/utils.dart';

class CustomCurosel extends StatefulWidget {
  const CustomCurosel({
    super.key,
    this.second = false,
  });
  final second;

  @override
  State<CustomCurosel> createState() => _CustomCuroselState();
}

final mController = CarouselController();

final imgUrl = [
  'https://beebom.com/wp-content/uploads/2022/02/iphone-14-cover-banner-2.jpg?w=1920',
  'https://cdn.sforum.vn/sforum/wp-content/uploads/2020/05/maxresdefault.jpg',
  'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/ee39b5127626079.61459b4a17a3b.png',
  'https://i0.wp.com/store.ave.com.bn/wp-content/uploads/2022/03/iPad_Air_Web_Banner_Avail_1400x700__SEA_FFH.png?fit=1400%2C700&ssl=1',
];

int activeIndex = 0;

class _CustomCuroselState extends State<CustomCurosel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider.builder(
              carouselController: widget.second ? null : mController,
              itemCount: imgUrl.length,
              itemBuilder: (context, index, realIndex) {
                final urlImg = imgUrl[index];
                return buildImage(urlImg, index);
              },
              options: CarouselOptions(
                height: widget.second ? 155 : 145.0,
                viewportFraction: widget.second ? 0.9 : 0.8,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
            ),
            Positioned(
                top: 60,
                left: 10,
                child: buildButton(icon: Icons.arrow_back_ios, left: true)),
            Positioned(
              top: 60,
              right: 10,
              child: buildButton(icon: Icons.arrow_forward_ios),
            ),
          ],
        ),
        kHeight,
        buildIndicators(imgUrl.length),
      ],
    );
  }

  Widget buildImage(String imgUrl, int index) => Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
          ),
        ),
      );

  Widget buildIndicators([length]) => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: length,
        effect: WormEffect(dotWidth: 6, dotHeight: 6),
      );
  Widget buildButton({bool left = false, icon}) => Visibility(
        visible: !widget.second,
        child: InkWell(
          onTap: () {
            left ? mController.previousPage() : mController.nextPage();
          },
          child: Container(
            padding: const EdgeInsets.only(left: 5, bottom: 2),
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              color: const Color.fromARGB(183, 255, 255, 255),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                icon,
                color: red,
                size: 20,
              ),
            ),
          ),
        ),
      );
}
