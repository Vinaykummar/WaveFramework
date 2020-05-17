import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/AppBars/AppBarType.dart';
import 'package:flutter/material.dart';

class MultipleItemAppBar extends StatelessWidget implements PreferredSize {
  final Widget title;
  final BorderSide bottomBorder;
  final Color backgroundColor;
  final double padding;
  final List<Widget> actions;
  final bool centerTitle;
  final Widget leading;
  final Size preferredSize;
  final AppBarType appBarType;
  BoxDecoration boxDecoration;
  final Gradient gradient;
  final bool dualAppBarMode;
  final BorderRadius borderRadius;

  MultipleItemAppBar(
      {Key key,
      this.title,
      this.bottomBorder,
      this.backgroundColor = Colors.white,
      this.padding = 8,
      this.actions,
      this.leading,
      this.centerTitle = false, this.appBarType = AppBarType.SOLID, this.gradient, this.dualAppBarMode, this.borderRadius})
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
      borderRadius: this.borderRadius,
      color: this.backgroundColor != null ? this.backgroundColor :  Theme.of(context).primaryColor,
      child: Container(
        padding: this.dualAppBarMode == true ? EdgeInsets.only(
            left: this.padding,
            right: this.padding) : EdgeInsets.only(
            top: AppBarDefaults().statusBarHeight(context),
            left: this.padding,
            right: this.padding),

        height: AppBarDefaults.appBarHeight,
        decoration: this.boxDecoration,
        child: Row(
          children: <Widget>[
            Flexible(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    this.leading != null ? this.leading : SizedBox.shrink(),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        child: Container(
                            child: this.centerTitle == true ? Center(
                              child: this.title != null
                                  ? this.title
                                  : SizedBox.shrink(),
                            ) : this.title != null
                                ? this.title
                                : SizedBox.shrink(),))
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    this.actions != null ? this.actions : [SizedBox.shrink()],
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
