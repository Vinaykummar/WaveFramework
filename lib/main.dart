import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/SearchWidget.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/BottomAppBar/DualAppBar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Components/Buttons/BasicTextIconButton/basic_TextIconButon.dart';
import 'package:flukit/Components/Buttons/FlatIconButton/flat_IconButton.dart';
import 'package:flukit/Components/Buttons/OutlineIconButton/outline_IconButton.dart';
import 'package:flukit/Components/Buttons/OutlineTextIconButton/Outline_TextIconButton.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';

import 'package:flukit/Themes/LightTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Components/AppBars/DefaultAppBars/MultipleItemAppBar/MultipleItemAppBar.dart';
import 'Components/Buttons/FlatTextIconButton/flat_TextIconButton.dart';
import 'Components/Buttons/OutlineTextButton/outline_TextButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: WaveThemes(context).lightTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: MultipleItemAppBar(
        padding: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        bottomBorder: BorderSide(color: Colors.transparent, width: 0),
        centerTitle: true,
        title: Text(
          '.wave',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          softWrap: false,
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: Theme.of(context).primaryColor),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Spacer(),
            WVBasicTextButton(
              size: ButtonSize.Medium,
              onPressed: (){},
              text: Text('Login', style: TextStyle(color: CustomColors.white,fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
