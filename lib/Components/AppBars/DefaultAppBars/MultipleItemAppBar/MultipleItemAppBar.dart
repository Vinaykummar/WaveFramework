import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';

class MultipleItemAppBar extends StatelessWidget implements PreferredSize{
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
  final List<Widget> actions;
  final bool centerTitle;
  final Widget leading;
  final Size preferredSize;

  MultipleItemAppBar(
      {Key key,
        this.title,
        this.bottomBorder,
        this.backgroundColor = Colors.white,
        this.padding = 5,
        this.actions,
        this.leading,
        this.centerTitle = false})
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


            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: this.centerTitle == true
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.start,
                children: [
                  this.leading != null
                      ? this.leading
                      : SizedBox.shrink(),
                  SizedBox(width: 5,),
                  this.title != null ? this.title : SizedBox.shrink()
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: this.actions != null
                      ? this.actions
                      : [SizedBox.shrink()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => null;
}
