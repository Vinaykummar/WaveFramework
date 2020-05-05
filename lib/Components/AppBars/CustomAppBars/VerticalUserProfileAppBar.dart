import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/VerticalUserProfileItem.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/BasicItemAppBar/BasicItemAppBar.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class VerticalUserProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicItemAppBar(
      title: VerticalUserProfileItem(
        title: Text(
          'Hannah Baker',
          style: TextStyle(
              fontFamily: 'gilroy',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: CustomColors.black),
        ),
        leadingIcon: Avatar(
          onlineStatusColor: CustomColors.red,
          statusIconHeight: 10,
          statusIconWidth: 10,
          enableOnlineStatus: false,
          avatarShape: AvatarShape.Circle,
          avatarBorderType: AvatarBorderType.Plain,
          image: AppBarDefaults.avatarImage,
          imageHeight: 26,
          imageWidth: 26,
          onAvatarTap: () {},
        ),
      ),
      leading:  IconButton(
        iconSize: 26,
        icon: Icon(
          Icons.arrow_back,
          color: CustomColors.red,
        ),
        onPressed: () {},
      ),
      action: IconButton(
        iconSize: 26,
        icon: Icon(
          Icons.cast_connected,
          color: CustomColors.red,
        ),
        onPressed: () {},
      ),
    );
  }
}
