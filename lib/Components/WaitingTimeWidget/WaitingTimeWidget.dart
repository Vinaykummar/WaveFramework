import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';
import 'package:flukit/Components/ImageOverlays/ImageOverlay.dart';
import 'package:flukit/Components/OverlappedAvatars/OverlappedAvatars.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flutter/material.dart';

class WaitingTimeWidget extends StatelessWidget {
  const WaitingTimeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
      color: Colors.white,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      widgets: <Widget>[
        HorizontalItems(
          leadingMainAxisAlignment: MainAxisAlignment.spaceBetween,
          actions: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '34',
                  style: Theme.of(context).textTheme.title.copyWith(
                      fontFamily: 'Roboto',
                      color: CustomColors.indigo,
                      fontSize: 32),
                ),
                Text(
                  'MIN',
                  style: Theme.of(context).textTheme.title.copyWith(
                      fontFamily: 'Roboto',
                      color: CustomColors.indigo,
                      fontSize: 28),
                ),
              ],
            )
          ],
          leadings: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Homeocare International Medical Institute',
                    softWrap: true,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(
                            color: CustomColors.black,
                            fontSize: 20),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Mehdipatnam, Hyderabad, 509001',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(
                            color: CustomColors.black,
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        HorizontalItems(
          leadings: <Widget>[
            OverlappedAvatars(
              metaData: Text(
                '45+',
                style: TextStyle(
                    color: CustomColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
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
                      image: AssetImage('assets/images/avatar-3.png')),
                  imageHeight: 40,
                  imageWidth: 40,
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
                      image: AssetImage('assets/images/avatar-4.png')),
                  imageHeight: 40,
                  imageWidth: 40,
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
                      image: AssetImage('assets/images/avatar-5.png')),
                  imageHeight: 40,
                  imageWidth: 40,
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
                      image: AssetImage('assets/images/avatar-6.png')),
                  imageHeight: 40,
                  imageWidth: 40,
                  onAvatarTap: () {},
                ),
              ],
            ),
          ],
          actions: <Widget>[
            WVBasicIconButton(
              padding: 0,
              size: ButtonSize.Mini,
              shape: ButtonShape.Cornered,
              icon: Icon(
                Icons.favorite_border,
                color: CustomColors.white,
              ),
              backgroundColor: CustomColors.pink,
            ),
            SizedBox(
              width: 8,
            ),
            WVBasicIconButton(
              padding: 0,
              size: ButtonSize.Mini,
              shape: ButtonShape.Cornered,
              icon: Icon(
                Icons.arrow_forward,
                color: CustomColors.white,
              ),
              backgroundColor: CustomColors.black,
            ),
          ],
        )
      ],
      padding: EdgeInsets.all(20),
      opacity: 1,
      borderRadius: 20,
    );
  }
}
