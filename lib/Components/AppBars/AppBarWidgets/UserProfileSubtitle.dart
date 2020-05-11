
import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class UserProfileItem extends StatelessWidget {

  final Widget leadingIcon;
  final Text title;
  final Text subTitle;
  final double spacing;



  UserProfileItem({
    Key key, this.leadingIcon, this.title, this.subTitle, this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          this.leadingIcon ?? SizedBox.shrink(),
          SizedBox(width: this.spacing,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Container(
                    child: this.title,
                  ),
                ),
                SizedBox(height: 3,),
                this.subTitle
              ],
            ),
          ),
        ],
      ),
    );
  }
}