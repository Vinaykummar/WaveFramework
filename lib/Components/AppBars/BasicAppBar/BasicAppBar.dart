import 'package:flukit/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.blue,
        child: Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              "Charlie Puth",
              style: TextStyle(
                  fontFamily: 'gilroy',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: CustomColors.blue),
            ),
            Text(
              "Welcome Back ",
              style: TextStyle(
                  fontSize: 30, color: CustomColors.blue.withOpacity(0.5)),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: new NetworkImage(
                      'https://images.pexels.com/photos/838875/pexels-photo-838875.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
              color: CustomColors.blue,
              shape: BoxShape.circle),
          margin: EdgeInsets.only(right: 10, top: 5),
          width: 50,
        )
      ],
    ));
  }
}
