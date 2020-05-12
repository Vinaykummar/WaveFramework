import 'package:flukit/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalItems extends StatelessWidget {
  final Widget title;
  final Color backgroundColor;
  final double padding;
  final List<Widget> actions;
  final List<Widget> leadings;
  final MainAxisAlignment leadingMainAxisAlignment;
  final CrossAxisAlignment leadingCrossAxisAlignment;
  final MainAxisAlignment actionMainAxisAlignment;
  final CrossAxisAlignment actionCrossAxisAlignment;
  final MainAxisAlignment horizontalMainAxisAlignment;
  final CrossAxisAlignment horizontalCrossAxisAlignment;

  const HorizontalItems(
      {Key key,
      this.title,
      this.backgroundColor,
      this.padding,
      this.actions,
      this.leadings,
      this.leadingMainAxisAlignment,
      this.leadingCrossAxisAlignment,
      this.actionMainAxisAlignment,
      this.actionCrossAxisAlignment,
      this.horizontalMainAxisAlignment,
      this.horizontalCrossAxisAlignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: this.leadings,
              ),
            ),
          ),
          Container(
            child: Row(
              children:
                  this.actions != null ? this.actions : [SizedBox.shrink()],
            ),
          )
        ],
      ),
    );
  }
}
