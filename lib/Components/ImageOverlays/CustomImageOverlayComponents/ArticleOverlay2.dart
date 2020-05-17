import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Components/OverlappedAvatars/OverlappedAvatars.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/material.dart';

import '../ImageOverlay.dart';

class ArticleOverlay2 extends StatelessWidget {
  const ArticleOverlay2({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
      backgroundimage: DecorationImage(
          image: new NetworkImage(
              'https://images.pexels.com/photos/2422293/pexels-photo-2422293.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          fit: BoxFit.cover),
      height: 250,
      gradientOverlay: true,
      gradient: LinearGradient(
          colors: [Colors.transparent, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        Text(
          'Meet Your Employees By IBM Zoom Connect',
          softWrap: true,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: CustomColors.white, fontSize: 24),
        ),
        OverlappedAvatars(
          metaData: Text(
            '45+',
            style: TextStyle(
                color: CustomColors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          spacing: 30,
          avatars: [
            Avatar(
              avatarBorder: Border.all(
                color: CustomColors.white,
                width: 2,
              ),
              avatarShape: AvatarShape.Circle,
              avatarBorderType: AvatarBorderType.Border,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/a1.jpg')),
              imageHeight: 50,
              imageWidth: 50,
              onAvatarTap: () {},
            ),
            Avatar(
              avatarBorder: Border.all(
                color: CustomColors.white,
                width: 2,
              ),
              avatarShape: AvatarShape.Circle,
              avatarBorderType: AvatarBorderType.Border,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/a2.png')),
              imageHeight: 50,
              imageWidth: 50,
              onAvatarTap: () {},
            ),
            Avatar(
              avatarBorder: Border.all(
                color: CustomColors.white,
                width: 2,
              ),
              avatarShape: AvatarShape.Circle,
              avatarBorderType: AvatarBorderType.Border,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/a3.png')),
              imageHeight: 50,
              imageWidth: 50,
              onAvatarTap: () {},
            ),
          ],
        ),
      ],
      padding: EdgeInsets.all(20),
      opacity: 1,
      borderRadius: 20,
    );
  }
}
