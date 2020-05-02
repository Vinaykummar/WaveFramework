import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class BasicAvatar extends StatelessWidget {
  final DecorationImage image;
  final double imageHeight;
  final double imageWidth;
  final Function onAvatarTap;

  const BasicAvatar(
      {Key key,
      this.image,
      this.imageHeight,
      this.imageWidth,
      this.onAvatarTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onAvatarTap,
      child: Container(
        decoration: BoxDecoration(
          image: this.image,
          color: CustomColors.blue,
          shape: BoxShape.circle,
        ),
        height: this.imageHeight,
        width: this.imageWidth,
      ),
    );
  }
}
