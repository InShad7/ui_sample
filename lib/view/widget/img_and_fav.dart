
  import 'package:flutter/material.dart';
import 'package:ui/view/utils/controller.dart';
import 'package:ui/view/utils/utils.dart';

Widget productImgAndFav(index) {
    return Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 11),
            height: mHeight! / 5,
            width: mHeight !/ 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(producImg[index]),
          ),
          Positioned(
            top: 12,
            right: 5,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: shadowColor,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(2, 7),
                  ),
                ],
              ),
              child: CircleAvatar(
                backgroundColor: favClr,
                radius: 16,
                child: const FavIcon(),
              ),
            ),
          )
        ],
      );
  }

  
class FavIcon extends StatefulWidget {
  const FavIcon({super.key});

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(
        fav ? Icons.favorite_border : Icons.favorite,
        color: fav ? grey : white,
        size: 23,
      ),
      onTap: () {
        setState(() {
          fav = !fav;
        });
      },
    );
  }
}
