import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText({title, size, fWeight}) => ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(10, 62, 137, 1),
            Color.fromRGBO(29, 115, 172, 1)
          ],
        ).createShader(bounds);
      },
      child: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(fontSize: size.toDouble(), fontWeight: fWeight),
        ),
      ),
    );
