import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class WaveThemes {
  final BuildContext context;

  WaveThemes(this.context);

  ThemeData get darkTheme => ThemeData(
      iconTheme: IconThemeData(
          color: CustomColors.white
      ),
      backgroundColor: CustomColors.black,
      primaryColor: CustomColors.white,
      accentColor: CustomColors.white,
      fontFamily: 'gilroy',
      brightness: Brightness.dark,
      textTheme: TextTheme(
          title: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          headline: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColors.black),
          body1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
              color: Colors.black.withOpacity(0.5))));

  ThemeData get lightTheme => ThemeData(
    buttonColor: CustomColors.indigo,
    iconTheme: IconThemeData(
      color: CustomColors.white
    ),
      backgroundColor: CustomColors.white,
      primaryColor: CustomColors.indigo,
      accentColor: CustomColors.yellow,
      fontFamily: 'gilroy',
      brightness: Brightness.light,
      textTheme: TextTheme(
          title: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          headline: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: CustomColors.black),
          body1: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.5,
              color: Colors.black.withOpacity(0.5))));
}
