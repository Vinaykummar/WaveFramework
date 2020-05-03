import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextIconAppBar extends StatelessWidget {
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
    final List<Widget> actions;

  TextIconAppBar(
      {this.title,
      this.bottomBorder,
      this.backgroundColor = Colors.white,
      this.padding = 8,
      this.actions});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(this.padding),
      decoration: BoxDecoration(
          color: this.backgroundColor,
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
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  this.title != null ? this.title : AppBarDefaults.brandName
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  this.actions != null
                      ? this.actions
                      : AppBarDefaults().appBarAction
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
