import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Buttons/GradientTextButton/Gradient_TextButton.dart';

import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'Components/Buttons/BasicTextIconButton/basic_TextIconButon.dart';
import 'Components/Buttons/FlatIconButton/flat_IconButton.dart';
import 'Components/Buttons/FlatTextButton/flat_TextButton.dart';
import 'Components/Buttons/FlatTextIconButton/flat_TextIconButton.dart';
import 'Components/Buttons/GradientIconButton/gradient_IconButton.dart';
import 'Components/Buttons/GradientTextIconButton/gradient_TextIconButton.dart';
import 'Components/Buttons/OutlineIconButton/outline_IconButton.dart';
import 'Components/Buttons/OutlineTextIconButton/Outline_TextIconButton.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, primaryColor: CustomColors.indigo),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  testTap() {
    print("tap working");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Friends",
          style: TextStyle(
              fontFamily: 'gilroy',
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: CustomColors.blueAccent),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               WVOutlineTextIconButton(
                 width: ButtonWidthType.Block,
                 shape: ButtonShape.Round,
                 icon: Icon(Icons.group_add,color: CustomColors.blue,),
                 size: ButtonSize.Large,
                 onPressed: () {},
               )
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
