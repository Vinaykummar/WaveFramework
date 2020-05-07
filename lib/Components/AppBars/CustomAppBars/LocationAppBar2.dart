import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/SubtitleAndLocation.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/TextItemAppBar/TextItemAppBar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';

class LocationAppBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextItemAppBar(
      title:SubtitleAndLocation(
        spacing: 10,
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
              color: CustomColors.indigo),
        ),
        subTitle: Text(
          'Change The Address',
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'gilroy',
              fontWeight: FontWeight.normal,
              color: CustomColors.indigo.withOpacity(0.5)),
        ),
        supportIcon: Icon(
          Icons.keyboard_arrow_down,
          color: CustomColors.indigo,
        ),
      ),
      actions:  [
        IconButton(
          iconSize: 24,
          icon: Icon(
            Icons.cast_connected,
            color: CustomColors.indigo,
          ),
          onPressed: () {},
        ),
        SizedBox(width: 10,),
        AppBarDefaults().appBarAction],
    );
  }
}
