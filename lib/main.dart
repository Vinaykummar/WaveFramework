import 'package:flukit/Colors/colors.dart';

import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Components/AppBars/BasicAppBar/BasicAppBar.dart';
import 'Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'Components/Buttons/BasicTextIconButton/basic_TextIconButon.dart';

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
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: CustomColors.black.withOpacity(0.5),
                      style: BorderStyle.solid,
                      width: 0.5,
                )
              )
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Icon(
                    Icons.menu,
                    color: CustomColors.black,
                    size: 28,
                  ),
                ),
                Expanded(
                  flex: 5,
                    child: Container(
                      child:   Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Groove Music",
                            style: TextStyle(
                                fontFamily: 'gilroy',
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: CustomColors.black),
                          ),
                          Text(
                            "Hi Charlie",
                            style: TextStyle(
                                fontSize: 16, color: CustomColors.black.withOpacity(0.5)),
                          ),
                        ],
                      ),
                    )),
                Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage(
                                  'https://images.pexels.com/photos/838875/pexels-photo-838875.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
                          color: CustomColors.blue,
                          shape: BoxShape.circle),
                    ))
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60),
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
                  WVBasicTextIconButton(
                    size: ButtonSize.Large,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
