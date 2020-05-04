import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';

class BasicItemAppBar extends StatelessWidget {
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
  final Widget action;
  final Widget leading;

  BasicItemAppBar(
      {Key key,
        this.title,
        this.bottomBorder,
        this.backgroundColor = Colors.white,
        this.padding = 8,
        this.action,
        this.leading})
      : super(key: key);

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
          children: <Widget>[
            Expanded(
                child: this.leading != null ? this.leading : AppBarDefaults.backNavIcon
            ),
            Expanded(
                flex: 5,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      this.title != null ? this.title : AppBarDefaults.backNavTitle
                    ],
                  ),
                )),
            Expanded(
                child: this.action != null ? this.action : AppBarDefaults().appBarAction)
          ],
        ),
      ),
    );
  }
}
