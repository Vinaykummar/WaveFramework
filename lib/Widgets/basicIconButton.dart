import 'package:flukit/Colors/colors.dart';
import 'package:flukit/CustomButton/basicIconButton.dart';
import 'package:flutter/material.dart';

class BasicIconButtonGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 25,
        ),
        Text('Basic Icon Buttons',
            style: TextStyle(
                color: CustomColors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 25,
        ),
        BasicIconButton(
          padding: 5,
          elevation: 0,
          color: CustomColors.orange,
          onPressed: () {},
          shape: CircleBorder(),
          icon: Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
        BasicIconButton(
          padding: 5,
          elevation: 0,
          color: CustomColors.red,
          onPressed: () {},
          shape: CircleBorder(),
          icon: Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
        BasicIconButton(
          padding: 5,
          elevation: 0,
          color:Colors.white,
          onPressed: () {},
          shape: CircleBorder(
            side:  BorderSide(color: Colors.black, width: 1.5),
          ),
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        BasicIconButton(
          padding: 10,
          elevation: 0,
          color: CustomColors.black,
          onPressed: () {},
          shape: CircleBorder(),
          icon: Icon(
            Icons.golf_course,
            color: Colors.white,
            size: 42,
          ),
        ),
      ],
    );
  }
}
