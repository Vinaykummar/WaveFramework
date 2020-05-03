import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/BackNavAppBar/BackNavAppBar.dart';
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
          child: TextAvatarAppBar(
            title: Avatar(
              onlineStatusColor: CustomColors.red,
              statusIconHeight: 15,
              statusIconWidth: 15,
              enableOnlineStatus: true,
              avatarShape: AvatarShape.Circle,
              avatarBorderType: AvatarBorderType.Plain,
              image: AppBarDefaults.avatarImage,
              imageHeight: 40,
              imageWidth: 40,
              onAvatarTap: () {},
            ),
            actions: <Widget>[
              WVBasicIconButton(
                shape: ButtonShape.Round,
                size: ButtonSize.Mini,
                backgroundColor: CustomColors.purple.withOpacity(0.1),
                icon : Icon(
                  Icons.person_add,
                  color:CustomColors.purple,
                ),
              ),
              SizedBox(width: 10,),
              WVBasicIconButton(
                shape: ButtonShape.Round,
                size: ButtonSize.Mini,
                backgroundColor: CustomColors.blue.withOpacity(0.1),
                icon : Icon(
                  Icons.chat_bubble,
                  color:CustomColors.blue,
                ),
              )
            ],
          ),
          preferredSize: Size.fromHeight(65),
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
                ThreeIconAppBar(),
                SizedBox(height: 20,),
                TextAvatarAppBar(),
                SizedBox(height: 20,),
                BasicAppBar(),
                SizedBox(height: 20,),
                BackNavAppBar(),
              ],
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
