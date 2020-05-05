import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';

import 'LocationAndSubtitle.dart';


class WelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: <Widget>[
          Expanded(
            child : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
             Text(
                  'Hello, Charlie',
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'gilroy',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: CustomColors.black),
                ),
                Text(
                  'Discoer new movies now',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.normal,
                      color: CustomColors.black.withOpacity(0.5)),
                ),
              ],
            ),
          ),
          AppBarDefaults().appBarAction
        ],
      ),
    );
  }
}
