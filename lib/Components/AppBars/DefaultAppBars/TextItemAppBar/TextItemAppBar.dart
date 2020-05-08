import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/AppBars/AppBarType.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextItemAppBar extends StatelessWidget implements PreferredSize {
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
  final List<Widget> actions;
  final Size preferredSize;
  final AppBarType appBarType;
  BoxDecoration boxDecoration;
  final Gradient gradient;
  final bool dualAppBarMode;
  TextItemAppBar(
      {this.title,
      this.bottomBorder,
      this.backgroundColor = Colors.white,
      this.padding = 8,
      this.actions, this.appBarType = AppBarType.SOLID, this.gradient, this.dualAppBarMode})
      : preferredSize = Size.fromHeight(AppBarDefaults.appBarHeight);

  @override
  Widget build(BuildContext context) {

    void checkAppBarType() {
      if(appBarType != null) {
        switch(this.appBarType) {
          case AppBarType.GRADIENT:
          // TODO: Handle this case.
            this.boxDecoration =  BoxDecoration(
                gradient: this.gradient != null ? this.gradient : LinearGradient (
                    colors: [CustomColors.blue, CustomColors.purple]
                ),
                border: Border(
                  bottom: this.bottomBorder != null
                      ? this.bottomBorder
                      : BorderSide(
                    color: CustomColors.black.withOpacity(0.5),
                    style: BorderStyle.solid,
                    width: 0.3,
                  ),
                ));
            break;
          case AppBarType.SOLID:
          // TODO: Handle this case.
            this.boxDecoration =  BoxDecoration(
                border: Border(
                  bottom: this.bottomBorder != null
                      ? this.bottomBorder
                      : BorderSide(
                    color: CustomColors.black.withOpacity(0.5),
                    style: BorderStyle.solid,
                    width: 0.3,
                  ),
                ));
            break;
        };
      } else {
        this.boxDecoration =  BoxDecoration(
            border: Border(
              bottom: this.bottomBorder != null
                  ? this.bottomBorder
                  : BorderSide(
                color: CustomColors.black.withOpacity(0.5),
                style: BorderStyle.solid,
                width: 0.3,
              ),
            ));
      }

    }

    checkAppBarType();

    return Material(
      color: this.backgroundColor != null ? this.backgroundColor :  Theme.of(context).primaryColor,
      child: Container(
        height: AppBarDefaults.appBarHeight,
        padding:this.dualAppBarMode == true ? EdgeInsets.only(
            left: this.padding,
            right: this.padding) : EdgeInsets.only(
            top: AppBarDefaults().statusBarHeight(context),
            left: this.padding,
            right: this.padding),
        decoration: this.boxDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                        child: Container(
                          child: this.title != null ? this.title : SizedBox.shrink(),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children:
                    this.actions != null ? this.actions : [SizedBox.shrink()],
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
