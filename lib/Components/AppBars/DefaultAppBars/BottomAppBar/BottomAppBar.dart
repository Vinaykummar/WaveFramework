import 'package:flukit/Components/AppBars/AppBarWidgets/SearchWidget.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/WelcomeWidget.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/VerticalUserProfileAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/BasicItemAppBar/BasicItemAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/MultipleItemAppBar/MultipleItemAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/TextItemAppBar/TextItemAppBar.dart';
import 'package:flutter/material.dart';

class DualAppBar extends StatelessWidget implements PreferredSize {
  @override
  // TODO: implement preferredSize
  final Size preferredSize;

  DualAppBar() : preferredSize = Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          MultipleItemAppBar(
            padding: 0,
            centerTitle: false,
            bottomBorder: BorderSide(color: Colors.transparent, width: 0),
          ),
          WelcomeWidget()
        ],
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => null;
}
