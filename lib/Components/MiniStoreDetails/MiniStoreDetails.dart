import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';
import 'package:flukit/Components/ImageOverlays/ImageOverlay.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flutter/material.dart';

class MiniStoreDetails extends StatelessWidget {
  const MiniStoreDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
      height: 120,
      width: 200,
      gradientOverlay: true,
      gradient: LinearGradient(colors: [Colors.transparent, Colors.black], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      opacity: 1,
      backgroundimage: DecorationImage(
          image: new AssetImage('assets/images/avatar-2.png'),
          fit: BoxFit.cover),
      borderRadius: 15,
      widgets: <Widget>[
        HorizontalItems(
          leadingMainAxisAlignment: MainAxisAlignment.center,
          leadings: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Container(
                       padding: EdgeInsets.all(8),
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(50),
                       ),
                       child: Text(
                        '24 Min',
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                    ),
                     ),
                     SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Medplus Super Market,Attapur',
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Attapur',
                      softWrap: true,
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            )
          ],
          actions: <Widget>[SizedBox.shrink()],
        )
      ],
    );
  }
}
