import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';

class MultipleItemAppBar extends StatelessWidget {
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
  final List<Widget> actions;
  final bool centerTitle;
  final Widget leading;

  MultipleItemAppBar(
      {Key key,
        this.title,
        this.bottomBorder,
        this.backgroundColor = Colors.white,
        this.padding = 8,
        this.actions,
        this.leading,
        this.centerTitle = true})
      : super(key: key);

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
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: this.centerTitle == true
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.start,
                  children: [
                    this.leading != null
                        ? this.leading
                        : AppBarDefaults().appBarLeading,
                    SizedBox(width: 5,),
                    this.title != null ? this.title : AppBarDefaults.brandName
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: this.actions != null
                      ? this.actions
                      : AppBarDefaults().appBarActions,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
