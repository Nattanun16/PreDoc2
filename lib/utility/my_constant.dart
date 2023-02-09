import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyConstant {
  // field
  static String appName = 'Predoc';
  static Color primary = const Color(0xfff7f9e7);
  static Color light = const Color(0xfff7f9e7);
  static Color dark = const Color(0xff2e7d32);
  static Color box = const Color(0xfff7f9e7);

  // method
  BoxDecoration planBox() => BoxDecoration(color: light);

  BoxDecoration whiteBox() => BoxDecoration(color: Colors.white54);

  BoxDecoration gradienBox() => BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0, -0.5),
          radius: 1.0,
          colors: [Colors.white, primary],
        ),
      );

  TextStyle h1style() => TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.orange.shade900,
      );

  TextStyle h2Style() => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.green.shade800,
      );

  TextStyle h3Style() => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.green.shade800,
      );
  TextStyle h4Style() => TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.green.shade800,
      );
}
