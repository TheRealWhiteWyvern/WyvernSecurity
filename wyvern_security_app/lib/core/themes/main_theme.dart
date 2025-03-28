import 'package:flutter/material.dart';

class MainTheme {
  //Main Colours
  static Color wyvernDarkGrey = const Color(0xFF313638);
  static Color wyvernLightGrey = const Color(0xFFC2C2C2);
  static Color wyvernDeepTeal = const Color(0xFF005F56);

  //Accent Colours
  static Color wyvernNeonCyan = const Color(0xFF00E5FF);
  static Color wyvernElectricBlue = const Color(0xFF1A8FE3);

  //Status Colours
  static Color wyvernCriticalRed = const Color(0xFFFF3B30);
  static Color wyvernAmberYellow = const Color(0xFFFFB400);

  //Basic B&W
  static Color wyvernBlack = const Color(0xFF000000);
  static Color wyvernWhite = const Color(0xFFFFFFFF);

  //Font configs
  static TextStyle h1Black = const TextStyle(
      fontSize: 24,
      fontFamily: 'Audiowide',
      fontWeight: FontWeight.w400,
      color: Colors.black,
      decoration: TextDecoration.none);

  static TextStyle h1White = const TextStyle(
      fontSize: 24,
      fontFamily: 'Audiowide',
      fontWeight: FontWeight.w400,
      color: Colors.white,
      decoration: TextDecoration.none);
}
