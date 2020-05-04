
import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class LocationAndSubtitle extends StatelessWidget {

final Widget leadingIcon;
final Text title;
final Text subTitle;
final Icon supportIcon;
final double spacing;



  LocationAndSubtitle({
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    this.title,
                    this.supportIcon
                  ],
                ),
              ),
              this.subTitle
            ],
          ),
        ],
      ),
    );
  }
}