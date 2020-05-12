import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/Buttons/OutlineIconButton/outline_IconButton.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flutter/material.dart';

class OverlappedAvatars extends StatelessWidget {

  final List<Widget> avatars;
  double left = 0;
  final double spacing;

  OverlappedAvatars({Key key, this.avatars, this.spacing = 25,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
        Expanded(
          child: Stack(
            children: this.avatars.map((f) {
              if(this.avatars.indexOf(f) == 0) {
                return f;
              }else  if(this.avatars.indexOf(f) > 0){
                this.left += this.spacing;
                print(this.left);
                return Positioned(child: f,left: this.left);
              }
              else {
                return SizedBox.shrink();
              }
            }).toList(),
          ),
        );
  }
}
