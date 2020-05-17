import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/LocationAndSubtitle.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/MultipleItemAppBar/MultipleItemAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/TextItemAppBar/TextItemAppBar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/AppBars/AppBarType.dart';
import 'package:flutter/material.dart';

class LocationAppBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultipleItemAppBar(
      borderRadius: BorderRadius.circular(15),
      centerTitle: true,
      leading: IconButton(icon: Icon(
          Icons.search,
          size: 24,
          color: CustomColors.indigo,
        ), onPressed: () {}),
        bottomBorder: BorderSide(
          color: Colors.transparent,
          style: BorderStyle.solid,
          width: 0),
      appBarType: AppBarType.SOLID,
      dualAppBarMode: true,
      title:LocationAndSubtitle(
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
      ),
      actions:  [
        AppBarDefaults().appBarAction],
    );
  }
}
