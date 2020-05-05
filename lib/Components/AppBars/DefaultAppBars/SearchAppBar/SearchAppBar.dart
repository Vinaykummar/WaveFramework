import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/SearchWidget.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchItemAppBar extends StatelessWidget implements PreferredSize {
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
  final Widget action;
  final Widget leading;
  final Size preferredSize;

  SearchItemAppBar(
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
        padding: EdgeInsets.all(5),
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            this.leading != null ? this.leading : SizedBox.shrink(),
            Flexible(
                child: this.title != null ? this.title : SizedBox.shrink()),
            this.action != null ? this.action : SizedBox.shrink()
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => null;
}
