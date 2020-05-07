import 'package:flukit/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubtitleAndLocation extends StatelessWidget {
  final Widget leadingIcon;
  final Text title;
  final Text subTitle;
  final Icon supportIcon;
  final double spacing;

  SubtitleAndLocation({
    Key key,
    this.leadingIcon,
    this.title,
    this.subTitle,
    this.supportIcon,
    this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          this.leadingIcon,
          SizedBox(
            width: this.spacing,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                this.subTitle,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
