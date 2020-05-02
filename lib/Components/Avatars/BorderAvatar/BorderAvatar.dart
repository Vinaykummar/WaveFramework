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
  final double cornerRadius;
  final bool enableOnlineStatus;
  final Color onlineStatusColor;

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
      this.onlineStatusColor = CustomColors.green})
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
            this.borderRadius = BorderRadius.circular(this.cornerRadius);
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

    checkBorder();
    checkShape();

    return InkWell(onTap: onAvatarTap, child: checkOnline());
  }

  checkOnline() {
    if (this.enableOnlineStatus == true) {
      return Stack(alignment: Alignment.topRight, children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: this.borderRadius,
            border: this.border,
            image: this.image,
            color: CustomColors.blue,
            shape: this.boxShape,
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
          color: CustomColors.blue,
          shape: this.boxShape,
        ),
        height: this.imageHeight,
        width: this.imageWidth,
      );
    }
  }
}
