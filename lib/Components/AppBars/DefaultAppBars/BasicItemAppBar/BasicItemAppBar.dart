import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';

class BasicItemAppBar extends StatelessWidget implements PreferredSize {
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
  final Widget action;
  final Widget leading;
  final Size preferredSize;

  BasicItemAppBar(
      {Key key,
      this.title,
      this.bottomBorder,
      this.backgroundColor = Colors.white,
      this.padding = 8,
      this.action,
      this.leading})
      : preferredSize = Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: this.backgroundColor,
      child: Container(
        padding: EdgeInsets.all(this.padding),
        decoration: BoxDecoration(
            border: Border(
          bottom: this.bottomBorder != null
              ? this.bottomBorder
              : BorderSide(
                  color: CustomColors.black.withOpacity(0.5),
                  style: BorderStyle.solid,
                  width: 0.3,
                ),
        )),
        child: Row(
          children: <Widget>[
            Expanded(
                child: this.leading != null
                    ? this.leading
                    : SizedBox.shrink()),
            Expanded(
                flex: 6,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      this.title != null ? this.title : SizedBox.shrink()
                    ],
                  ),
                )),
            Expanded(
                child: this.action != null
                    ? this.action
                    : SizedBox.shrink())
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => null;
}
