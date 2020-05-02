import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      AppBar(
        flexibleSpace: Text('Appbar'),
        brightness: Brightness.dark,
        centerTitle: true,
        title: Text('Appbar'),
      ),
    );
  }
}
