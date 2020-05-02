import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/BasicAvatar/BasicAvatar.dart';
import 'package:flukit/Components/Avatars/OnlineAvatar/OnlineAvatar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextIconAppBar extends StatelessWidget {
  final Text title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
  final Widget action;

  TextIconAppBar(
      {this.title,
      this.bottomBorder,
      this.backgroundColor = Colors.white,
      this.padding = 8,
      this.action})
      : assert(action != null);

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
                    color: CustomColors.black.withOpacity(0),
                    style: BorderStyle.solid,
                    width: 0,
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
                  this.title != null ? this.title : AppBarDefaults.brandTitle
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[this.action],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
