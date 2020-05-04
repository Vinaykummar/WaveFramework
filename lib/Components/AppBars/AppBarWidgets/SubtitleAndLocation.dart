import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class SubtitleAndLocation extends StatelessWidget {
  final Widget leadingIcon;
  final Text title;
  final Text subTitle;
  final Icon supportIcon;
  final double spacing;



  SubtitleAndLocation({
    Key key, this.leadingIcon, this.title, this.subTitle, this.supportIcon, this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          this.leadingIcon,
    SizedBox(width: this.spacing,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              this.subTitle,
              Container(
                child: Row(
                  children: <Widget>[
                    this.title,
                    this.supportIcon
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}