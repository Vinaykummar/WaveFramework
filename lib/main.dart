import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/BackNavAppBar/BackNavAppBar.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/BasicAppBar1.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/LocationAppBar1.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/UserProfileAppBar.dart';
import 'package:flukit/Components/AppBars/CustomAppBars/VerticalUserProfileAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/BasicItemAppBar/BasicItemAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/MultipleItemAppBar/MultipleItemAppBar.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/TextItemAppBar/TextItemAppBar.dart';
import 'package:flukit/Components/AppBars/ProfileAppBar/ProfileIconAppBar.dart';
import 'package:flukit/Components/AppBars/TextAvatarAppBar/TextAvatarAppBar.dart';
import 'package:flukit/Components/AppBars/ThreeIconAppBar/ThreeIconAppBar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/Buttons/FlatIconButton/flat_IconButton.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Components/AppBars/BasicAppBar/BasicAppBar.dart';
import 'Components/AppBars/CustomAppBars/BasicAppBar2.dart';
import 'Components/AppBars/CustomAppBars/HorizontalUserProfileAppBar.dart';
import 'Components/AppBars/CustomAppBars/LocationAppBar2.dart';
import 'Components/AppBars/CustomAppBars/LocationAppBar3.dart';
import 'Components/AppBars/test.dart';
import 'Components/Avatars/Avatar/Avatar.dart';

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
  testTap() {
    print("tap working");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: VerticalUserProfileAppBar(),
          preferredSize: Size.fromHeight(70),
        ),
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
                  height: 100,
                  color: CustomColors.black,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: CustomColors.blue,
                          child: Text('PaloAlto, United States Of America',overflow: TextOverflow.ellipsis,),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: CustomColors.red,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
