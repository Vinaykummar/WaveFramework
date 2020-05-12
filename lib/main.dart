import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/AppBars/AppBarWidgets/SearchWidget.dart';
import 'package:flukit/Components/AppBars/DefaultAppBars/BottomAppBar/DualAppBar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Components/Buttons/BasicTextIconButton/basic_TextIconButon.dart';
import 'package:flukit/Components/Buttons/FlatIconButton/flat_IconButton.dart';
import 'package:flukit/Components/Buttons/OutlineIconButton/outline_IconButton.dart';
import 'package:flukit/Components/Buttons/OutlineTextIconButton/Outline_TextIconButton.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';
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
import 'Components/OverlappedAvatars/OverlappedAvatars.dart';
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
      backgroundColor: Theme.of(context).backgroundColor,
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
              ProjectUi(context),
              SizedBox(
                height: 20,
              ),
              ProjectUi(context),
              SizedBox(
                height: 20,
              ),
              ProjectUi(context),
              SizedBox(
                height: 20,
              ),
              ProjectUi(context),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  ImageOverlay ProjectUi(BuildContext context) {


    return ImageOverlay(
              color: Colors.white,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              widgets: <Widget>[
                HorizontalItems(
                  leadings: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Design Discussion',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: true,
                            style: Theme.of(context).textTheme.title.copyWith(
                                color: CustomColors.black, fontSize: 20),
                          ),
                          SizedBox(height: 8,),
                          Text(
                            'Timings : 16:30-20:00',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            softWrap: true,
                            style: Theme.of(context).textTheme.title.copyWith(
                                color: CustomColors.black,
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 5,),
                          HorizontalItems(
                            leadings: [
                              WVBasicTextButton(
                              onPressed: () {},
                                padding: 0,
                              backgroundColor: Colors.green.withOpacity(0.2),
                              text: Text('Team', style: TextStyle(color: Colors.green),),
                              shape: ButtonShape.Round,
                              size: ButtonSize.Tiny,
                              width: ButtonWidthType.Block,
                            ),
                            SizedBox(width: 8,),
                              WVBasicTextButton(
                                onPressed: () {},
                                padding: 0,
                                backgroundColor: Colors.red.withOpacity(0.2),
                                text: Text('Meeting', style: TextStyle(color: Colors.red),),
                                shape: ButtonShape.Round,
                                size: ButtonSize.Tiny,
                                width: ButtonWidthType.Block,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                HorizontalItems(
                  leadings: <Widget>[
                    OverlappedAvatars(
                      avatars: [
                        Avatar(
                          avatarBorder: Border.all(color: CustomColors.white,width: 2,),
                          avatarShape: AvatarShape.Circle,
                          avatarBorderType: AvatarBorderType.Border,
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage('assets/images/a1.jpg')),
                          imageHeight: 45,
                          imageWidth: 45,
                          onAvatarTap: () {},
                        ),
                        Avatar(
                          avatarBorder: Border.all(color: CustomColors.white,width: 2,),

                          avatarShape: AvatarShape.Circle,
                          avatarBorderType: AvatarBorderType.Border,
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage('assets/images/a5.jpg')),
                          imageHeight: 45,
                          imageWidth: 45,
                          onAvatarTap: () {},
                        ),
                        Avatar(
                          avatarBorder: Border.all(color: CustomColors.white,width: 2,),

                          avatarShape: AvatarShape.Circle,
                          avatarBorderType: AvatarBorderType.Border,
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage('assets/images/a3.png')),
                          imageHeight: 45,
                          imageWidth: 45,
                          onAvatarTap: () {},
                        ),
                        Avatar(
                          avatarBorder: Border.all(color: CustomColors.white,width: 2,),

                          avatarShape: AvatarShape.Circle,
                          avatarBorderType: AvatarBorderType.Border,
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage('assets/images/a4.jpg')),
                          imageHeight: 45,
                          imageWidth: 45,
                          onAvatarTap: () {},
                        ),
                      ],
                    ),
                  ],
                  actions: <Widget>[
                    WVOutlineIconButton(
                      border: BorderSide(
                          color: Colors.pink,
                          width: 2
                      ),
                      padding: 0,
                      size: ButtonSize.Mini,
                      shape: ButtonShape.Round,
                      icon: Icon(
                        Icons.edit,
                        color: CustomColors.pink,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    WVBasicIconButton(
                      padding: 0,
                      size: ButtonSize.Mini,
                      shape: ButtonShape.Round,
                      icon: Icon(
                        Icons.arrow_forward,
                        color: CustomColors.white,
                      ),
                      backgroundColor: CustomColors.pink,
                    ),
                  ],
                )
              ],
              padding: EdgeInsets.all(20),
              opacity: 1,
              height: 200,
              borderRadius: 20,
            );
  }
}

