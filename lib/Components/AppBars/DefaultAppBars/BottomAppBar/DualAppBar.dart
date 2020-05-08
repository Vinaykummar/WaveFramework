import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DualAppBar extends StatelessWidget implements PreferredSize {
  final Size preferredSize;
  final PreferredSizeWidget topBar;
  final PreferredSizeWidget bottom;


  DualAppBar({this.topBar, this.bottom}) : preferredSize = Size.fromHeight(topBar.preferredSize.height+bottom.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    print(topBar.preferredSize.height+bottom.preferredSize.height);
    return Container(
      padding: EdgeInsets.only(top: AppBarDefaults().statusBarHeight(context)),
      height: topBar.preferredSize.height+bottom.preferredSize.height+AppBarDefaults().statusBarHeight(context),
      child: Column(
        children: <Widget>[
          Container(height: topBar.preferredSize.height,child: this.topBar,),
          Container(height: bottom.preferredSize.height,child: this.bottom,)
        ],
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => null;
}
