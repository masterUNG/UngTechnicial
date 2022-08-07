import 'package:flutter/material.dart';

class MyConstant {
  //field
  static Color primary = const Color.fromARGB(255, 243, 128, 6);
  static Color dart = const Color.fromARGB(255, 14, 14, 15);
  static Color light = const Color.fromARGB(255, 125, 124, 121);
  static Color active = const Color.fromARGB(255, 177, 22, 238);
  static Color button = Colors.white;

  //method

  BoxDecoration basicBox() {
    return BoxDecoration(
      color: const Color.fromARGB(255, 212, 228, 67).withOpacity(0.5),
    );
  }

  BoxDecoration gradientBox() {
    return BoxDecoration(
      gradient: RadialGradient(center: Alignment(-0.3, -0.3),
        radius: 1.0,
        colors: [
          Colors.white,
          const Color.fromARGB(255, 212, 228, 67),
        ],
      ),
    );
  }

  BoxDecoration imageBox() {
    return BoxDecoration();
  }

  TextStyle h1Style() {
    return TextStyle(
      fontSize: 36,
      color: dart,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h2Style() {
    return TextStyle(
      fontSize: 18,
      color: dart,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle h3Style() {
    return TextStyle(
      fontSize: 14,
      color: dart,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle h3HintStyle() {
    return TextStyle(
      fontSize: 14,
      color: light,
      fontWeight: FontWeight.normal,
    );
  }

  TextStyle h3AcctiveStyle() {
    return TextStyle(
      fontSize: 16,
      color: active,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle h3ButtonStyle() {
    return TextStyle(
      fontSize: 16,
      color: button,
      fontWeight: FontWeight.w500,
    );
  }
} // end Class