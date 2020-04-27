import 'package:flukit/Colors/colors.dart';
import 'package:flukit/CustomButton/plainIconButton.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlainIconGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 25,
        ),
        Text('Plain Basic Icon Buttons',
            style: TextStyle(
                color: CustomColors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 25,
        ),
        FLPlainIconButton(
          buttonCornerRadius: 8,
          backgroundColor: CustomColors.green,
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
        FLPlainIconButton(
          buttonCornerRadius: 50,
          backgroundColor: CustomColors.green,
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
        FLPlainIconButton(
          buttonCornerRadius: 0,
          backgroundColor: CustomColors.green,
          iconAlignment: ButtonIconAlignment.Right,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
        FLPlainIconButton(
          buttonCornerRadius: 10,
          backgroundColor: CustomColors.green,
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
        FLPlainIconButton(
          buttonCornerRadius: 0,
          backgroundColor: CustomColors.green,
          iconAlignment: ButtonIconAlignment.Right,
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
