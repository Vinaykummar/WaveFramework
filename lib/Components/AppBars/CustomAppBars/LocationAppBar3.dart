import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/LocationAndSubtitle.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/SingleLocationTitle.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/TextItemAppBar/TextItemAppBar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';
class LocationAppBar3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextItemAppBar(
      title:LocationAndSubtitle(
        subTitle: Text(
        '25 Mutual Friends',
        style: TextStyle(
            fontFamily: 'gilroy',
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: CustomColors.black.withOpacity(0.5)),
      ),
        spacing: 10,
        supportIcon:  Icon(
          Icons.keyboard_arrow_down,
          color: CustomColors.red,
        ),
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
      actions:  [
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
            Icons.cloud_upload,
            color: CustomColors.red,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
