import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/LocationAndSubtitle.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/TextItemAppBar/TextItemAppBar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';

class LocationAppBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextItemAppBar(
      title:LocationAndSubtitle(
        spacing: 10,
        leadingIcon: Icon(
          Icons.location_on,
          color: CustomColors.red,
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
          color: CustomColors.red,
        ),
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
        AppBarDefaults().appBarAction],
    );
  }
}
