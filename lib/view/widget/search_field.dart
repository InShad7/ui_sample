import 'package:flutter/material.dart';
import 'package:ui/view/utils/utils.dart';

class MyTextField extends StatelessWidget {
  String title;
  IconData? icon;
  double ht;
  MyTextField({
    super.key,
    required this.title,
    required this.icon,
    required this.ht,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 12),
          height: ht,
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: white,
              boxShadow: [
                BoxShadow(
                  color: greyShade,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(3, 10),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: TextFormField(
              cursorColor: blue,
              style: TextStyle(color: black),
              decoration: InputDecoration(
                prefixIcon: Icon(icon, size: 28, color: searchIconColor),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                contentPadding: const EdgeInsets.all(5),
                hintText: title,
                hintStyle: TextStyle(fontSize: 18, color: searchIconColor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
