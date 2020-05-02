import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class OnlineAvatar extends StatelessWidget {
  final DecorationImage image;
  final double imageHeight;
  final double imageWidth;
  final Color onlineIconColor;
  final Function onAvatarTap;

  const OnlineAvatar(
      {Key key,
        this.image,
        this.imageHeight,
        this.imageWidth,
        this.onlineIconColor,
        this.onAvatarTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onAvatarTap,
      child: Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: this.image,
              color: CustomColors.blue,
              shape: BoxShape.circle,
            ),
            height: this.imageHeight,
            width: this.imageWidth,
          ),
          Container(
            height: 16,
            width: 16,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                color: this.onlineIconColor,
                shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}
