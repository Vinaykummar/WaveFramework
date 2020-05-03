import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget {
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
    final List<Widget> actions;
  final Widget leading;

  BasicAppBar(
      {Key key,
      this.title,
      this.bottomBorder,
      this.backgroundColor = Colors.white,
      this.padding = 8,
      this.actions,
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
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [this.leading != null
                        ? this.leading
                        : AppBarDefaults().appBarLeading],
                  ),
                ),
                ),
            Expanded(

                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      this.title != null ? this.title : AppBarDefaults.brandName
                    ],
                  ),
                )),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: this.actions != null
                      ? this.actions
                      : AppBarDefaults().appBarActions,
                ),
              ),)
          ],
        ),
      ),
    );
  }
}
