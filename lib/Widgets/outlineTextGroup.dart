import 'package:flukit/Colors/colors.dart';
import 'package:flukit/CustomButton/OutlineTextButton.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OutlineTextGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 25,),
        Text('Outline Text Buttons',
            style: TextStyle(
                color: CustomColors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 25,),

        FLOutlineTextButton(
          buttonBorder: BorderSide(
              color: CustomColors.blue,
              style: BorderStyle.solid,
              width: 1.5),
          buttonCornerRadius: 8,
          buttonText: Text(
            "Create Group Account",
            style: TextStyle(color: CustomColors.blue, fontSize: 16),
          ),

          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},

        ),
        FLOutlineTextButton(
          buttonBorder: BorderSide(
              color: CustomColors.blue,
              style: BorderStyle.solid,
              width: 1.5),
          buttonCornerRadius: 50,
          buttonText: Text(
            "Create Group Account",
            style: TextStyle(color: CustomColors.blue, fontSize: 16),
          ),
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},

        ),
        FLOutlineTextButton(
          buttonBorder: BorderSide(
              color: CustomColors.blue,
              style: BorderStyle.solid,
              width: 1.5),
          buttonCornerRadius: 0,
          buttonText: Text(
            "Create Group Account",
            style: TextStyle(color: CustomColors.blue, fontSize: 16),
          ),
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},

        ),
        FLOutlineTextButton(
          buttonBorder: BorderSide(
              color: CustomColors.blue,
              style: BorderStyle.solid,
              width: 1.5),
          buttonCornerRadius: 0,
          buttonText: Text(
            "Create Group Account",
            style: TextStyle(color: CustomColors.blue, fontSize: 16),
          ),
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},

        ),

        FLOutlineTextButton(
          buttonBorder: BorderSide(
              color: CustomColors.blue,
              style: BorderStyle.solid,
              width: 1.5),
          buttonText: Text(
            "Create Group Account",
            style: TextStyle(color: CustomColors.blue, fontSize: 16),
          ),
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},

        ),
      ],
    );
  }
}
