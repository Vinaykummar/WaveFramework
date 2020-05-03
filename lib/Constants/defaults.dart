import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
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

  Widget appBarAction = Avatar(
    onlineStatusColor: CustomColors.red,
    statusIconHeight: 15,
    statusIconWidth: 15,
    enableOnlineStatus: true,
    avatarShape: AvatarShape.Circle,
    avatarBorderType: AvatarBorderType.Plain,
    image: AppBarDefaults.avatarImage,
    imageHeight: 40,
    imageWidth: 40,
    onAvatarTap: () {},
  );

  Widget appBarLeading = IconButton(
      icon: Icon(
        Icons.menu,
        color: CustomColors.red,
      ),
      onPressed: () {});

  List<Widget> appBarActions = [
    IconButton(
      iconSize: 24,
      icon: Icon(
        Icons.cast_connected,
        color: CustomColors.red,
      ),
      onPressed: () {},
    ),
    IconButton(
      iconSize: 24,
      icon: Icon(
        Icons.favorite,
        color: CustomColors.red,
      ),
      onPressed: () {},
    ),
    IconButton(
      iconSize: 24,
      icon: Icon(
        Icons.account_circle,
        color: CustomColors.red,
      ),
      onPressed: () {},
    ),
  ];

  static const Text brandName = Text(
    brandTitle,
    style: TextStyle(
        fontFamily: 'gilroy',
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: brandColor),
  );

  static const Text backNavTitle = Text(
    'Charles Martin',
    style: TextStyle(
        fontFamily: 'gilroy',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: brandColor),
  );

  static const Widget backNavIcon =  IconButton(
    iconSize: 24,
    icon: Icon(
      Icons.arrow_back_ios,
      color: CustomColors.blue,
    ),
  );

  static const DecorationImage avatarImage = DecorationImage(
      fit: BoxFit.cover, image: AssetImage('assets/images/avatar-4.png'));
}
