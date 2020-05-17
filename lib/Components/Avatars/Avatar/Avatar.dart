import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final Border avatarBorder;
  final DecorationImage image;
  final double imageHeight;
  final double imageWidth;
  final Function onAvatarTap;
  final AvatarBorderType avatarBorderType;
  final AvatarShape avatarShape;
  final BorderRadiusGeometry cornerRadius;
  final bool enableOnlineStatus;
  final Color onlineStatusColor;
  final double statusIconHeight;
  final double statusIconWidth;
  final Widget child;
  final Color backgroundColor;

  Border border;
  BorderRadius borderRadius;
  BoxShape boxShape;

  Avatar(
      {Key key,
        this.image,
        this.imageHeight,
        this.imageWidth,
        this.onAvatarTap,
        this.avatarBorderType = AvatarBorderType.Plain,
        this.avatarShape = AvatarShape.Circle,
        this.cornerRadius,
        this.avatarBorder,
        this.enableOnlineStatus = false,
        this.onlineStatusColor = CustomColors.green,
        this.statusIconHeight,
        this.statusIconWidth, this.child, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void checkShape() {
      switch (avatarShape) {
        case AvatarShape.Circle:
        // TODO: Handle this case.
          this.boxShape = BoxShape.circle;
          break;
        case AvatarShape.Flat:
        // TODO: Handle this case.
          this.boxShape = BoxShape.rectangle;
          break;
        case AvatarShape.Cornered:
        // TODO: Handle this case.
          this.boxShape = BoxShape.rectangle;
          if (this.cornerRadius != null) {
            this.borderRadius = this.cornerRadius;
          } else {
            this.borderRadius = BorderRadius.circular(10);
          }
          break;
      }
    }

    void checkBorder() {
      switch (this.avatarBorderType) {
        case AvatarBorderType.Plain:
        // TODO: Handle this case.
          this.border = null;
          break;
        case AvatarBorderType.Border:
        // TODO: Handle this case.
          this.border = this.avatarBorder;
          break;
      }
    }


    checkOnline() {
      print(this.imageHeight / 2);
      if (this.enableOnlineStatus == true) {
        return Stack(alignment: Alignment.topRight, children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: this.borderRadius,
              border: this.border,
              image: this.image,
              color: this.backgroundColor != null ? this.backgroundColor :  Theme.of(context).primaryColor,
              shape: this.boxShape,
            ),
            height: this.imageHeight,
            width: this.imageWidth,
            child: this.child,
          ),
          Container(
            height: this.statusIconHeight != null
                ? this.statusIconHeight
                : this.imageHeight / 2 - 5,
            width: this.statusIconWidth != null
                ? this.statusIconWidth
                : this.imageWidth / 2 - 5,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 1.2,
                ),
                color: this.onlineStatusColor,
                shape: BoxShape.circle),
          ),
        ]);
      } else {
        return Container(
          decoration: BoxDecoration(
            borderRadius: this.borderRadius,
            border: this.border,
            image: this.image,
            color: this.backgroundColor != null ? this.backgroundColor :  Theme.of(context).primaryColor,
            shape: this.boxShape,
          ),
          height: this.imageHeight,
          width: this.imageWidth,
          child: Center(child: this.child),
        );
      }
    }

    checkBorder();
    checkShape();

    return InkWell(onTap: onAvatarTap, child: checkOnline());
  }
}
