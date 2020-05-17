import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Components/Buttons/OutlineIconButton/outline_IconButton.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';
import 'package:flukit/Components/OverlappedAvatars/OverlappedAvatars.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/material.dart';
import '../ImageOverlay.dart';

class ProjectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
      color: Colors.black,
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
                        color: CustomColors.white, fontSize: 22),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    'Timings : 16:30-20:00',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                    style: Theme.of(context).textTheme.title.copyWith(
                        color: CustomColors.white,
                        fontFamily: 'Roboto',
                        fontSize: 12,letterSpacing: 0.5,
                        fontWeight: FontWeight.normal
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(
          'Project Design Discussion about resolving the ui design issues in wave framework',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          softWrap: true,
          style: Theme.of(context).textTheme.title.copyWith(
              color: CustomColors.white,
              fontSize: 16,
              letterSpacing: 0.3,
              fontWeight: FontWeight.normal),
        ),

        HorizontalItems(
          leadings: <Widget>[
            OverlappedAvatars(
              metaData: Text('45+',style: TextStyle(color: CustomColors.white,fontSize: 16,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
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
                  color: Colors.white,
                  width: 2
              ),
              padding: 0,
              size: ButtonSize.Mini,
              shape: ButtonShape.Round,
              icon: Icon(
                Icons.edit,
                color: CustomColors.white,
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
                color: CustomColors.black,
              ),
              backgroundColor: CustomColors.white,
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
