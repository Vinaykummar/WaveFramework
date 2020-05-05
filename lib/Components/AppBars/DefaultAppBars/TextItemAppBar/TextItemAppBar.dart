import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextItemAppBar extends StatelessWidget implements PreferredSize {
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
  final List<Widget> actions;
  final Size preferredSize;

  TextItemAppBar(
      {this.title,
      this.bottomBorder,
      this.backgroundColor = Colors.white,
      this.padding = 8,
      this.actions})
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                this.title != null ? this.title : SizedBox.shrink()
              ],
            ),
            Flexible(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:
                      this.actions != null ? this.actions : [SizedBox.shrink()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => null;
}
