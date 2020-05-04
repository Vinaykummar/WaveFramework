import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/HorizontalUserProfile.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/BasicItemAppBar/BasicItemAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/TextItemAppBar/TextItemAppBar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';

class HorizontalUserProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicItemAppBar(
      title: HorizontalUserProfile(
        spacing: 10,
        title: Text(
          'Hannah Baker',
          style: TextStyle(
              fontFamily: 'gilroy',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: CustomColors.black),
        ),
        leadingIcon: AppBarDefaults().appBarAction,
      ),
      action: IconButton(
        iconSize: 24,
        icon: Icon(
          Icons.cast_connected,
          color: CustomColors.red,
        ),
        onPressed: () {},
      ),
    );
  }
}
