import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/UserProfileSubtitle.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/BasicAppBar1.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/BasicAppBar2.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/HorizontalUserProfileAppBar.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/LocationAppBar1.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/LocationAppBar2.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/LocationAppBar3.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/UserProfileAppBar.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/VerticalUserProfileAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/BasicItemAppBar/BasicItemAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/BottomAppBar/BottomAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/SearchAppBar/SearchAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/TextItemAppBar/TextItemAppBar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/Buttons/FlatTextButton/flat_TextButton.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/CustomButton/basicIconButton.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';

import 'Components/AppBars/AppBarWidgets/HorizontalUserProfile.dart';
import 'Components/AppBars/AppBarWidgets/SearchWidget.dart';
import 'Components/AppBars/DefaultAppBars/MultipleItemAppBar/MultipleItemAppBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, primaryColor: CustomColors.indigo),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(child: LocationAppBar2(), preferredSize: Size.fromHeight(70)),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  child: Row(
                    children: <Widget>[
                      AppBarDefaults.backNavIcon,
                      HorizontalUserProfile(
                        spacing: 10,
                        title: Text(
                          'Hannah Baker',
                          style: TextStyle(
                              fontFamily: 'gilroy',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: CustomColors.black),
                        ),
                        leadingIcon: AppBarDefaults().appBarAction,
                      ),
                      Flexible(
                          child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              iconSize: 24,
                              icon: Icon(
                                Icons.file_download,
                                color: CustomColors.red,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              iconSize: 24,
                              icon: Icon(
                                Icons.settings,
                                color: CustomColors.red,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                ),
                Container(
                  color: CustomColors.black,
                  height: 60,
                  child: Row(
                    children: <Widget>[
                      Container(
                        color: CustomColors.red,
                      ),
                      Container(
                        color: CustomColors.green,
                      ),
                      Spacer(),
                      Container(
                        color: CustomColors.blue,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
