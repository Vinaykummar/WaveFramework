import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/BasicAvatar/BasicAvatar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Components/AppBars/test.dart';
import 'Components/Avatars/BorderAvatar/BorderAvatar.dart';

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
          child: TextIconAppBar(
            action: Avatar(
              enableOnlineStatus: true,
              onlineStatusColor: CustomColors.blue,
              avatarShape: AvatarShape.Circle,
              avatarBorderType: AvatarBorderType.Plain,
              image: AppBarDefaults.avatarImage,
              imageHeight: AppBarDefaults.avatarImageHeight,
              imageWidth: AppBarDefaults.avatarImageWidth,
              onAvatarTap: () {},
            ),
              padding: 8,
              title: Text(
                "Netflix",
                style: TextStyle(
                    fontFamily: 'gilroy',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.red),
              ),
          ),
          preferredSize: Size.fromHeight(100),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
