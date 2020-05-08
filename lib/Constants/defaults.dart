import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/LocationAndSubtitle.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/SingleLocationTitle.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/SubtitleAndLocation.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      colors: [CustomColors.orange, CustomColors.indigo]);
  static const BorderSide borderSide =
      BorderSide(color: CustomColors.blue, width: 2, style: BorderStyle.solid);
}

class AppBarDefaults {

  static const String brandTitle = "wave.";
  static const Color brandColor = CustomColors.indigo;
  static const double avatarImageWidth = 50;
  static const double avatarImageHeight = 50;
  double statusBarHeight (BuildContext context ) => MediaQuery.of(context).padding.top;
  static const double appBarHeight = 80;

void check() {
  print(ThemeData.light().primaryColor);
}

  Widget appBarAction = Avatar(
    onlineStatusColor: CustomColors.indigo,
    statusIconHeight: 12,
    statusIconWidth: 12,
    enableOnlineStatus: true,
    avatarShape: AvatarShape.Circle,
    avatarBorderType: AvatarBorderType.Plain,
    image: AppBarDefaults.avatarImage,
    imageHeight: 30,
    imageWidth: 30
    ,
    onAvatarTap: () {},
  );

  Widget appBarLeading = IconButton(
      icon: Icon(
        Icons.menu,
        color: CustomColors.indigo,
      ),
      onPressed: () {});


  List<Widget> appBarActions = [
    IconButton(
      iconSize: 24,
      icon: Icon(
        Icons.cast_connected,
        color: ThemeData.light().accentColor,
      ),
      onPressed: () {},
    ),
    IconButton(
      iconSize: 24,
      icon: Icon(
        Icons.file_download,
        color: CustomColors.indigo,
      ),
      onPressed: () {},
    ),
    IconButton(
      iconSize: 24,
      icon: Icon(
        Icons.settings,
        color: CustomColors.indigo,
      ),
      onPressed: () {},
    ),
  ];

  static const Text brandName = Text(
    brandTitle,
    maxLines: 1,
    overflow: TextOverflow.ellipsis,
    softWrap: false,
    style: TextStyle(
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

  static const Widget backNavIcon = IconButton(
    iconSize: 24,
    icon: Icon(
      Icons.arrow_back,
      color: CustomColors.indigo,
    ),
  );

  static const DecorationImage avatarImage = DecorationImage(
      fit: BoxFit.cover, image: AssetImage('assets/images/avatar-4.png'));

  Widget locationAndSubtitle = LocationAndSubtitle(
    leadingIcon: Icon(
      Icons.location_on,
      color: CustomColors.indigo,
    ),
    title: Text(
      'Palo Alto,California',
      maxLines: 1,
      style: TextStyle(
          fontFamily: 'gilroy',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: CustomColors.black),
    ),
    subTitle: Text(
      'Change The Address',
      style: TextStyle(
          fontSize: 12,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.normal,
          color: CustomColors.black.withOpacity(0.5)),
    ),
    supportIcon: Icon(
      Icons.keyboard_arrow_down,
      color: CustomColors.indigo,
    ),
  );



  Widget subtilteAndLocation = SubtitleAndLocation(
    leadingIcon: Icon(
      Icons.location_on,
      color: CustomColors.indigo,
    ),
    title: Text(
      'Palo Alto,California',
      maxLines: 1,
      style: TextStyle(
          fontFamily: 'gilroy',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: CustomColors.black),
    ),
    subTitle: Text(
      'Change The Address',
      style: TextStyle(
          fontSize: 12,
          fontFamily: 'gilroy',
          fontWeight: FontWeight.normal,
          color: CustomColors.black.withOpacity(0.5)),
    ),
    supportIcon: Icon(
      Icons.keyboard_arrow_down,
      color: CustomColors.indigo,
    ),
  );
}



