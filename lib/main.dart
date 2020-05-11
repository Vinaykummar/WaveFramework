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
import 'Components/AppBars/AppBarWidgets/UserProfileSubtitle.dart';
import 'Components/AppBars/AppBarWidgets/VerticalUserProfileItem.dart';
import 'Components/AppBars/DefaultAppBars/BasicItemAppBar/BasicItemAppBar.dart';
import 'Components/AppBars/DefaultAppBars/MultipleItemAppBar/MultipleItemAppBar.dart';
import 'Components/Avatars/Avatar/Avatar.dart';
import 'Components/Buttons/FlatTextIconButton/flat_TextIconButton.dart';
import 'Components/Buttons/OutlineTextButton/outline_TextButton.dart';
import 'Components/ImageOverlays/ImageOverlay.dart';
import 'Constants/defaults.dart';
import 'Enums/Avatars/AvatarEnums.dart';
import 'Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'Widgets/basicButtonsWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: WaveThemes(context).darkTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MultipleItemAppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        centerTitle: true,
        padding: 10,
        title: Text(
          'Zopper',
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {}),
        actions: [AppBarDefaults().appBarAction],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending Now',
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 20,
              ),
              ImageOverlay(
                color: Colors.black,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                widgets: <Widget>[
                  Text(
                    'Mount Valley',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: CustomColors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Most Popular Right At Your Finger Tips Refreshed At Every Interval',
                    style: Theme.of(context).textTheme.title.copyWith(
                        color: CustomColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  WVBasicTextButton(
                    onPressed: () {},
                    width: ButtonWidthType.Block,
                    shape: ButtonShape.Round,
                    size: ButtonSize.Mini,
                    backgroundColor: CustomColors.white,
                    text: Text(
                      'Subscribe',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  )
                ],
                padding: EdgeInsets.all(20),
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                opacity: 0.5,
                height: 220,
                backgroundimage: DecorationImage(
                    image: new AssetImage('assets/images/a2.png'),
                    fit: BoxFit.cover),
                borderRadius: 20,
              ),
              SizedBox(
                height: 20,
              ),
              ImageOverlay(
                color: Colors.black,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                widgets: <Widget>[
                  Text(
                    'High Mountains',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: CustomColors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Most Popular Right At Your Finger Tips Refreshed At Every Interval',
                    style: Theme.of(context).textTheme.title.copyWith(
                        color: CustomColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  WVBasicTextButton(
                    onPressed: () {},
                    width: ButtonWidthType.Block,
                    shape: ButtonShape.Round,
                    size: ButtonSize.Mini,
                    backgroundColor: CustomColors.white,
                    text: Text(
                      'Subscribe',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  )
                ],
                padding: EdgeInsets.all(20),
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                opacity: 0.5,
                height: 220,
                backgroundimage: DecorationImage(
                    image: new AssetImage('assets/images/a3.png'),
                    fit: BoxFit.cover),
                borderRadius: 20,
              ),
              SizedBox(
                height: 20,
              ),
              ImageOverlay(
                color: Colors.black,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                widgets: <Widget>[
                  Text(
                    'Green Lands',
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(color: CustomColors.white),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Most Popular Right At Your Finger Tips Refreshed At Every Interval',
                    style: Theme.of(context).textTheme.title.copyWith(
                        color: CustomColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  WVBasicTextButton(
                    onPressed: () {},
                    width: ButtonWidthType.Block,
                    shape: ButtonShape.Round,
                    size: ButtonSize.Mini,
                    backgroundColor: CustomColors.white,
                    text: Text(
                      'Subscribe',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                  )
                ],
                padding: EdgeInsets.all(20),
                gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                opacity: 0.5,
                height: 220,
                backgroundimage: DecorationImage(
                    image: new AssetImage('assets/images/a4.jpg'),
                    fit: BoxFit.cover),
                borderRadius: 20,
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
