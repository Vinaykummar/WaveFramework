
import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class VerticalUserProfileItem extends StatelessWidget {

  final Widget leadingIcon;
  final Text title;
  final double spacing;

  VerticalUserProfileItem({
    Key key, this.leadingIcon, this.title, this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              this.leadingIcon,
              SizedBox(height: this.spacing,),
              this.title,
            ],
          ),
        ],
      ),
    );
  }
}