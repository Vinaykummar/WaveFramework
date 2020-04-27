import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/material.dart';

class ButtonDefaults {
  static const Text socialbuttonText = Text('Sign in with Google', style: TextStyle(color: Colors.white, fontSize: 16),);
  static const Text buttonOutlineText = Text('Sample Button', style: TextStyle(color: CustomColors.blue, fontSize: 16),);
  static const Text socialOutlineText = Text('Sign in with Google', style: TextStyle(color: CustomColors.blue, fontSize: 16),);
  static const Text buttonText = Text('Sample Button', style: TextStyle(color: Colors.white, fontSize: 16),);
  static const MainAxisSize defaMainaxis = MainAxisSize.min;
  static const ButtonShape buttonShape= ButtonShape.Cornered;
  static const ButtonSize buttonSize = ButtonSize.Medium;
  static const ButtonWidthType buttonWidthType = ButtonWidthType.FullWidth;
  static const ButtonIconAlign buttonIconAlign = ButtonIconAlign.Left;
  static const Color buttonBackgroundColor = CustomColors.blue;
  static const Icon basicButtonIcon = Icon(Icons.cloud_upload, color: Colors.white,);
  static const Icon outlineButtonIcon = Icon(Icons.cloud_upload, color: CustomColors.blue,);
  static const Icon gradientButtonIcon = Icon(Icons.cloud_upload, color: Colors.white,);
  static const Gradient gradient = LinearGradient(
      begin: Alignment.centerLeft,
      colors: [CustomColors.orange, CustomColors.red]);
  static const BorderSide borderSide = BorderSide(color: CustomColors.blue, width: 2, style: BorderStyle.solid);

}