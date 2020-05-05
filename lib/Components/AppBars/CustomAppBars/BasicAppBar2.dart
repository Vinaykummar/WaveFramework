import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/BasicItemAppBar/BasicItemAppBar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';


class BasicAppBar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicItemAppBar(
      title: Text(
        'contacts',
        style: TextStyle(
            fontFamily: 'gilroy',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CustomColors.red),
      ),
      leading: AppBarDefaults.backNavIcon,
      action: IconButton(
        iconSize: 24,
        icon: Icon(
          Icons.info,
          color: CustomColors.red,
        ),
      ),
    );
  }
}
