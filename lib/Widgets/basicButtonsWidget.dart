import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Components/Buttons/BasicTextIconButton/basic_TextIconButon.dart';
import 'package:flukit/Components/Buttons/OutlineTextButton/outline_TextButton.dart';
import 'package:flukit/Components/Buttons/OutlineTextIconButton/Outline_TextIconButton.dart';
import 'package:flukit/CustomButton/basicTextButton.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/material.dart';

class BasicButtonsGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 28,
                  backgroundImage: new NetworkImage(
                      'https://images.pexels.com/photos/838875/pexels-photo-838875.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Mariana Mendes",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "3 Mutual Friends",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  WVBasicTextIconButton(
                    iconAlignment: ButtonIconAlign.Left,
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.white,

                    ),
                    shape: ButtonShape.Round,
                    width: ButtonWidthType.FullWidth,
                    size: ButtonSize.Small,
                    backgroundColor: CustomColors.blue,
                    onPressed: () {},
                    text: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 28,
                  backgroundImage: new NetworkImage(
                      'https://images.pexels.com/photos/1438275/pexels-photo-1438275.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Clay Jensen",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "14 Mutual Friends",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  WVBasicTextIconButton(
                    iconAlignment: ButtonIconAlign.Left,
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.white,

                    ),
                    shape: ButtonShape.Round,
                    width: ButtonWidthType.FullWidth,
                    size: ButtonSize.Small,
                    backgroundColor: CustomColors.blue,
                    onPressed: () {},
                    text: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 28,
                  backgroundImage: new NetworkImage(
                      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hannah Bakker",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "45 Mutual Friends",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  WVBasicTextIconButton(
                    iconAlignment: ButtonIconAlign.Left,
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.white,
                     
                    ),
                    shape: ButtonShape.Round,
                    width: ButtonWidthType.FullWidth,
                    size: ButtonSize.Small,
                    backgroundColor: CustomColors.blue,
                    onPressed: () {},
                    text: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 28,
                  backgroundImage: new NetworkImage(
                      'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Monte Tonwy",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "78 Mutual Friends",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  WVBasicTextIconButton(
                    iconAlignment: ButtonIconAlign.Left,
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.white,
                     
                    ),
                    shape: ButtonShape.Round,
                    width: ButtonWidthType.FullWidth,
                    size: ButtonSize.Small,
                    backgroundColor: CustomColors.blue,
                    onPressed: () {},
                    text: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 28,
                  backgroundImage: new NetworkImage(
                      'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Bryce Walker",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "32 Mutual Friends",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  WVBasicTextIconButton(
                    iconAlignment: ButtonIconAlign.Left,
                    icon: Icon(
                      Icons.person_add,
                      color: Colors.white,
                     
                    ),
                    shape: ButtonShape.Round,
                    width: ButtonWidthType.FullWidth,
                    size: ButtonSize.Small,
                    backgroundColor: CustomColors.blue,
                    onPressed: () {},
                    text: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
