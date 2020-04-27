import 'package:flukit/Colors/colors.dart';
import 'package:flukit/CustomButton/icon_button.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicTextIconGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 25,),
        Text('Basic Text Icon Buttons',
            style: TextStyle(
                color: CustomColors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 25,),
        FLBasicTextIconButton(
          buttonCornerRadius: 8,
          backgroundColor: CustomColors.blue,
          buttonText: Text(
            "Send Now",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),
        FLBasicTextIconButton(
          buttonCornerRadius: 50,
          backgroundColor: CustomColors.blue,
          buttonText: Text(
            "Send Now",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),
        FLBasicTextIconButton(
          buttonCornerRadius: 0,
          backgroundColor: CustomColors.blue,
          buttonText: Text(
            "Send Now",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Right,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),
        FLBasicTextIconButton(
          buttonCornerRadius: 10,
          backgroundColor: CustomColors.blue,
          buttonText: Text(
            "Send Now",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),
        FLBasicTextIconButton(
          buttonCornerRadius: 0,
          backgroundColor: CustomColors.blue,
          buttonText: Text(
            "Send Now",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Right,
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},
          buttonIcon: Icon(
            Icons.check,
            color: Colors.white,
          ),
        ),

      ],
    );
  }
}
