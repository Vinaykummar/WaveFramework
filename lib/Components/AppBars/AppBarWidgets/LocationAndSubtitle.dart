
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
          this.leadingIcon != null ? this.leadingIcon : SizedBox.shrink(),
          SizedBox(width: this.spacing,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Flexible(
                        flex:4,
                        child: Container(
                            child: this.title),
                      ),
                      Flexible(child: this.supportIcon)
                    ],
                  ),
                ),
                this.subTitle
              ],
            ),
          ),
        ],
      ),
    );
  }
}