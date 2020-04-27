import 'package:flukit/Colors/colors.dart';
import 'package:flukit/CustomButton/basicThreeIconButton.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicThreeIconGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        SizedBox(height: 25,),
        Text('Basic Three Icon Buttons',
            style: TextStyle(
                color: CustomColors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        SizedBox(height: 25,),

        FLBasicThreeIconButton(
          buttonCornerRadius: 8,
          backgroundColor: CustomColors.black,
          buttonText: Text(
            "Apple Signin",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          leadingIcon: Icon(
            Icons.group_add,
            color: Colors.white,
          ),
          endIcon: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
        FLBasicThreeIconButton(
          buttonCornerRadius: 50,
          backgroundColor: CustomColors.black,
          buttonText: Text(
            "Apple Signin",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          leadingIcon: Icon(
            Icons.group_add,
            color: Colors.white,
          ),
          endIcon: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
        FLBasicThreeIconButton(
          buttonCornerRadius: 0,
          backgroundColor: CustomColors.black,
          buttonText: Text(
            "Apple Signin",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.TextWidth,
          onPressed: () {},
          leadingIcon: Icon(
            Icons.group_add,
            color: Colors.white,
          ),
          endIcon: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
        FLBasicThreeIconButton(
          backgroundColor: CustomColors.black,
          buttonText: Text(
            "Apple Signin",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},
          leadingIcon: Icon(
            Icons.group_add,
            color: Colors.white,
          ),
          endIcon: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
        FLBasicThreeIconButton(
          buttonCornerRadius: 0,
          backgroundColor: CustomColors.black,
          buttonText: Text(
            "Apple Signin",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          iconAlignment: ButtonIconAlignment.Left,
          buttonWidth: ButtonWidth.FullWidth,
          onPressed: () {},
          leadingIcon: Icon(
            Icons.group_add,
            color: Colors.white,
          ),
          endIcon: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
