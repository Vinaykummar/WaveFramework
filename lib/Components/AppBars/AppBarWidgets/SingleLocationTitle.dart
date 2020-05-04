import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class SingleLocationTitle extends StatelessWidget {
  final Widget leadingIcon;
  final Text title;
  final Icon supportIcon;
  final double spacing;

  SingleLocationTitle({
    Key key, this.leadingIcon, this.title,this.supportIcon, this.spacing,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          this.leadingIcon,
          SizedBox(width: this.spacing,),
          this.title,
          this.supportIcon,
        ],
      ),
    );
  }
}
