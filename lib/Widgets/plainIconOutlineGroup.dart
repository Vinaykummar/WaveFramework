import 'package:flukit/Colors/colors.dart';
import 'package:flukit/CustomButton/outline_icon_button.dart';
import 'package:flukit/CustomButton/plainIconOutline.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlainOutlineIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 25,
        ),
        Text('Plain Outline Icon Buttons',
            style: TextStyle(
                color: CustomColors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 25,
        ),
        FLPlainIconOutline(
          buttonBorder: BorderSide(
              color: CustomColors.blue, style: BorderStyle.solid, width: 1.5),
          buttonCornerRadius: 8,
          iconAlignment: ButtonIconAlignment.Right,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.group_add,
            color: CustomColors.blue,
          ),
        ),
        FLPlainIconOutline(
          buttonBorder: BorderSide(
              color: CustomColors.blue, style: BorderStyle.solid, width: 1.5),
          buttonCornerRadius: 50,
          iconAlignment: ButtonIconAlignment.Right,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.group_add,
            color: CustomColors.blue,
          ),
        ),
        FLPlainIconOutline(
          buttonBorder: BorderSide(
              color: CustomColors.blue, style: BorderStyle.solid, width: 1.5),
          buttonCornerRadius: 0,
          iconAlignment: ButtonIconAlignment.Right,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.group_add,
            color: CustomColors.blue,
          ),
        ),
        FLPlainIconOutline(
          buttonBorder: BorderSide(
              color: CustomColors.blue, style: BorderStyle.solid, width: 1.5),
          buttonCornerRadius: 0,
          iconAlignment: ButtonIconAlignment.Right,
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.group_add,
            color: CustomColors.blue,
          ),
        ),
        FLPlainIconOutline(
          buttonBorder: BorderSide(
              color: CustomColors.blue, style: BorderStyle.solid, width: 1.5),
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.group_add,
            color: CustomColors.blue,
          ),
        ),
      ],
    );
  }
}
