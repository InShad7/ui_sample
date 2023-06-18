import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/view/utils/controller.dart';
import 'package:ui/view/utils/utils.dart';
import 'package:ui/view/widget/custom_text.dart';
import 'package:ui/view/widget/search_field.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          left: mWidth / 10, top: mHeight / 40, right: mWidth / 17),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome ,',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: headerTextColor,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  zoomDrawerController.open!();
                },
                child: customText(
                  title: 'M. Alwan',
                  size: 24,
                  fWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Icon(
                        Icons.add_shopping_cart,
                        color: headerIconColor,
                        size: 30,
                      ),
                      Positioned(
                        left: mWidth / 27.5,
                        bottom: mHeight / 55,
                        child: CircleAvatar(
                          radius: 7.5,
                          backgroundColor: Colors.green,
                          child: Text(
                            '3',
                            style: TextStyle(color: white, fontSize: 13),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kWidth,
                  Stack(
                    children: [
                      Icon(
                        Icons.notifications_outlined,
                        color: headerIconColor,
                        size: 30,
                      ),
                      Positioned(
                        left: mWidth / 27.5,
                        bottom: mHeight / 55,
                        child: CircleAvatar(
                          radius: 7.5,
                          backgroundColor: green,
                        ),
                      ),
                    ],
                  ),
                  kWidth,
                  const CircleAvatar(
                    radius: 17,
                    backgroundImage: AssetImage('assets/dp.jpg'),
                  ),
                ],
              ),
            ],
          ),
          kHeight,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyTextField(
                title: 'Find best vape...',
                icon: Icons.search,
                ht: 48,
              ),
              CircleAvatar(
                backgroundColor: filterColor,
                radius: 25,
                child: Icon(
                  Icons.tune,
                  color: black,
                ),
              )
            ],
          ),
          kHeight20,
        ],
      ),
    );
  }
}
