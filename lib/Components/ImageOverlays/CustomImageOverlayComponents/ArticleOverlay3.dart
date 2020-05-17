import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Components/OverlappedAvatars/OverlappedAvatars.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/material.dart';

import '../ImageOverlay.dart';

class ArticleOverlay3 extends StatelessWidget {
  const ArticleOverlay3({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
      backgroundimage: DecorationImage(
          image: new NetworkImage(
              'https://images.pexels.com/photos/3201580/pexels-photo-3201580.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          fit: BoxFit.cover),
      height: 250,
      gradientOverlay: true,
      gradient: LinearGradient(
          colors: [Colors.transparent, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      widgets: <Widget>[
        Text(
          'IBM Cloud Trainings',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          softWrap: true,
          style: Theme.of(context).textTheme.title.copyWith(
              color: CustomColors.white,
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
        WVBasicIconButton(
          onPressed: () {},
          padding: 0,
          iconSize: 45,
          backgroundColor: Colors.white,
          icon: Icon(Icons.play_arrow, color: Colors.black),
          shape: ButtonShape.Round,
          size: ButtonSize.Small,
        ),
        Text(
          'Blockchain Development Training By Certified Developers',
          softWrap: true,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: CustomColors.white, fontSize: 24),
        ),
      ],
      padding: EdgeInsets.all(20),
      opacity: 1,
      borderRadius: 20,
    );
  }
}
