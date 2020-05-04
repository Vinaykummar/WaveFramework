import 'package:flukit/Components/AppBars/DefaultAppBars/BasicItemAppBar/BasicItemAppBar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flutter/material.dart';


class BasicAppBar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BasicItemAppBar(
      title: AppBarDefaults.brandName,
      leading: AppBarDefaults().appBarLeading,
      action: AppBarDefaults().appBarAction,
    );
  }
}
