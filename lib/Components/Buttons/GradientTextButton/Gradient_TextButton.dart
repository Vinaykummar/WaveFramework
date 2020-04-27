import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class WVradientTextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 45,
        child: RaisedButton(
          highlightElevation: 5,
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
          elevation: 0,
          onPressed: () {},
          child: Container(
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    colors: [CustomColors.orange, CustomColors.red])),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      );
  }
}
