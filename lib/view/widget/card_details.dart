
  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/view/utils/controller.dart';
import 'package:ui/view/utils/utils.dart';

Container cardDetails(index) {
    return Container(
        padding: const EdgeInsets.all(12),
        height: mHeight! / 7.5,
        width: mWidth,
        decoration: BoxDecoration(
          color: topBrandColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    prodctTitle[index],
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.sen(
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: shadowColor,
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(2, 8),
                        ),
                      ]),
                  height: 28,
                  child: Chip(
                      // elevation: 1,
                      backgroundColor: white,
                      avatar: CircleAvatar(
                        backgroundColor: white,
                        child: Icon(
                          Icons.star,
                          color: yellow,
                          size: 20,
                        ),
                      ),
                      label: const Text('4.5')),
                )
              ],
            ),
            kHeight5,
            Text(
              sub[index],
              style: GoogleFonts.sen(
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
            kHeight5,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ ${price[index]}',
                  style: GoogleFonts.sen(
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.add_box_outlined,
                      color: addIconClr,
                    ),
                    kWidth5,
                    Text(
                      'Add to cart',
                      style: GoogleFonts.heebo(
                        textStyle: const TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
  }