import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';
import 'package:flukit/Components/OverlappedAvatars/OverlappedAvatars.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/material.dart';

import '../ImageOverlay.dart';

class UserProfileWithOverlappedAvatars extends StatelessWidget {
  const UserProfileWithOverlappedAvatars({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
      backgroundimage: DecorationImage(image: new AssetImage('assets/images/avatar.png'),fit: BoxFit.cover),
      height: 220,
      gradientOverlay: true,
      gradient: LinearGradient(colors:[Colors.transparent,Colors.black],begin: Alignment.topCenter,end: Alignment.bottomCenter),
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      widgets: <Widget>[
        HorizontalItems(
          leadings: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Serena Williams',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: true,
                    style: Theme.of(context).textTheme.title.copyWith(
                        color: CustomColors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Product Manager',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                    style: Theme.of(context).textTheme.title.copyWith(
                        color: CustomColors.white,
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        HorizontalItems(
          leadingMainAxisAlignment: MainAxisAlignment.center,
          leadings: <Widget>[
            OverlappedAvatars(
              metaData: Text('45+',style: TextStyle(color: CustomColors.white,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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
                      image:
                      AssetImage('assets/images/a1.jpg')),
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
                      image:
                      AssetImage('assets/images/a2.png')),
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
                      image:
                      AssetImage('assets/images/a3.png')),
                  imageHeight: 50,
                  imageWidth: 50,
                  onAvatarTap: () {},
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        HorizontalItems(
          leadingMainAxisAlignment:
          MainAxisAlignment.center,
          leadings: [
            WVBasicTextButton(
              onPressed: () {},
              padding: 0,
              backgroundColor: Colors.white,
              text: Text(
                'Connect',
                style: TextStyle(color: Colors.black),
              ),
              shape: ButtonShape.Round,
              size: ButtonSize.Tiny,
              width: ButtonWidthType.FullWidth,
            )
          ],
        )
      ],
      padding: EdgeInsets.all(20),
      opacity: 1,
      borderRadius: 20,
    );
  }
}
