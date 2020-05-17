import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Buttons/BasicTextIconButton/basic_TextIconButon.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';
import 'package:flukit/Components/ImageOverlays/ImageOverlay.dart';
import 'package:flukit/Components/MiniStoreDetails/MiniStoreDetails.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flutter/material.dart';

class DiscoverMore extends StatelessWidget {
  const DiscoverMore({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
       solidBackground: true,
        padding: EdgeInsets.all(12),
        opacity: 1,
        color: Colors.black,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        borderRadius: 20,
        widgets: [
          HorizontalItems(
            padding: 15,
            leadingMainAxisAlignment: MainAxisAlignment.start,
            actions: <Widget>[
              WVBasicTextIconButton(
                padding: 0,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                onPressed: () {},
                iconAlignment: ButtonIconAlign.Right,
                shape: ButtonShape.Cornered,
                size: ButtonSize.Mini,
                text: Text('View'),
                backgroundColor: CustomColors.indigo,
              )
            ],
            leadings: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Discover Near You',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'New places are added everyday',
                    style: TextStyle(
                        fontSize: 12, color: Colors.white),
                  ),
                ],
              )
            ],
          ),
         SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      MiniStoreDetails(),
                      SizedBox(
                        width: 10,
                      ),
                      MiniStoreDetails(),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
        ],
      );
  }
}
