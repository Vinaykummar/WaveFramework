import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';
import 'package:flukit/Components/OverlappedAvatars/OverlappedAvatars.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/material.dart';

import '../ImageOverlay.dart';


class ArticleOverlay4 extends StatelessWidget {
  const ArticleOverlay4({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
      backgroundimage: DecorationImage(
          image: new NetworkImage(
              'https://images.pexels.com/photos/943096/pexels-photo-943096.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          fit: BoxFit.cover),
      height: 250,
      gradientOverlay: true,
      gradient: LinearGradient(
          colors: [Colors.transparent, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      widgets: <Widget>[
        Text(
          'IBM Cloud',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          softWrap: true,
          style: Theme.of(context).textTheme.title.copyWith(
              color: CustomColors.white,
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
        Text(
          'Blockchain Development Training By Certified Developers',
          softWrap: true,
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: CustomColors.white, fontSize: 24),
        ),
        HorizontalItems(
          leadings: <Widget>[
            Icon(
              Icons.remove_red_eye,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '54K Views',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              softWrap: true,
              style: Theme.of(context).textTheme.title.copyWith(
                  color: CustomColors.white,
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ],
          actions: [
            WVBasicIconButton(
              onPressed: () {},
              padding: 0,
              iconSize: 35,
              backgroundColor: Colors.white,
              icon: Icon(Icons.play_arrow, color: Colors.black),
              shape: ButtonShape.Round,
              size: ButtonSize.Mini,
            )
          ],
        ),
      ],
      padding: EdgeInsets.all(20),
      opacity: 1,
      borderRadius: 20,
    );
  }
}
