import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/BasicAppBar/BasicAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Components/AppBars/ProfileAppBar/ProfileIconAppBar.dart';
import 'Components/AppBars/ThreeIconAppBar/ThreeIconAppBar.dart';
import 'Components/AppBars/test.dart';


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
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: ProfileIconAppBar(),
          preferredSize: Size.fromHeight(60),
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PreferredSize(
                  child: ProfileIconAppBar(),
                  preferredSize: Size.fromHeight(60),
                ),
                SizedBox(
                  height: 20,
                ),
                PreferredSize(
                  child: ThreeIconAppBar(),
                  preferredSize: Size.fromHeight(60),
                ),
                SizedBox(
                  height: 20,
                ),
                PreferredSize(
                  child: AppsBar(),
                  preferredSize: Size.fromHeight(60),
                ),
              ],
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}


