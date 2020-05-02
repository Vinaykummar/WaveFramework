import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/material.dart';

class ButtonDefaults {
  static const Text socialbuttonText = Text(
    'Sign in with Google',
    style: TextStyle(color: Colors.white, fontSize: 22),
  );
  static const Text buttonOutlineText = Text(
    'Sample Button',
    style: TextStyle(color: CustomColors.blue, fontSize: 22),
  );
  static const Text socialOutlineText = Text(
    'Sign in with Google',
    style: TextStyle(color: CustomColors.blue, fontSize: 22),
  );
  static const Text buttonText = Text(
    'Sample Button',
    style: TextStyle(color: Colors.white, fontSize: 22),
  );
  static const MainAxisSize defaMainaxis = MainAxisSize.min;
  static const ButtonShape buttonShape = ButtonShape.Cornered;
  static const ButtonSize buttonSize = ButtonSize.Medium;
  static const ButtonWidthType buttonWidthType = ButtonWidthType.FullWidth;
  static const ButtonIconAlign buttonIconAlign = ButtonIconAlign.Left;
  static const Color buttonBackgroundColor = CustomColors.blue;
  static const Icon basicButtonIcon = Icon(
    Icons.cloud_upload,
    color: Colors.white,
  );
  static const Icon outlineButtonIcon = Icon(
    Icons.cloud_upload,
    color: CustomColors.blue,
  );
  static const Icon gradientButtonIcon = Icon(
    Icons.cloud_upload,
    color: Colors.white,
  );
  static const Gradient gradient = LinearGradient(
      begin: Alignment.centerLeft,
      colors: [CustomColors.orange, CustomColors.red]);
  static const BorderSide borderSide =
      BorderSide(color: CustomColors.blue, width: 2, style: BorderStyle.solid);
}

class AppBarDefaults {
  static const String brandTitle = "Netflix";
  static const Color brandColor = CustomColors.red;
  static const double avatarImageWidth = 50;
  static const double avatarImageHeight = 50;
  static const Text brandName = Text(
    brandTitle,
    style: TextStyle(
        fontFamily: 'gilroy',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: brandColor),
  );

  static const DecorationImage avatarImage = DecorationImage(
      fit: BoxFit.cover,
      image: NetworkImage(
          'https://images.pexels.com/photos/838875/pexels-photo-838875.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'));
}
