import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'package:flukit/Components/Buttons/OutlineIconButton/outline_IconButton.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverlappedAvatars extends StatelessWidget {

  final List<Widget> avatars;
  double left = 0;
  double width = 0;
  final double spacing;
  final Color metaDataBackgroundColor;
  final Widget metaData;

  OverlappedAvatars({Key key, this.avatars, this.spacing = 25, this.metaData, this.metaDataBackgroundColor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void check() {
      Avatar gotAvatar = this.avatars[0];
      Avatar avatar = new Avatar(
        imageHeight: gotAvatar.imageHeight,
        imageWidth: gotAvatar.imageWidth,
        cornerRadius: gotAvatar.cornerRadius,
        avatarBorder: gotAvatar.border,
        avatarShape: gotAvatar.avatarShape,
        backgroundColor: this.metaDataBackgroundColor != null ? this.metaDataBackgroundColor : Theme.of(context).primaryColor,
        child: this.metaData,
      );
      this.avatars.add(avatar);
      print(avatar.imageHeight);
      this.avatars.map((item) {
        this.width += this.spacing;
      }).toList();
      this.width += this.spacing;
    }

    check();

    return
        Container(
          width: this.width.toDouble(),
          child: Stack(
            children:
            this.avatars.map((f) {
              if(this.avatars.indexOf(f) == 0) {
                return f;
              }else  if(this.avatars.indexOf(f) > 0){
                this.left += this.spacing;
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
