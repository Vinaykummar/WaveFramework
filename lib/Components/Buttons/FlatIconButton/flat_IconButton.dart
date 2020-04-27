import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WVFlatIconButton extends StatelessWidget {
  final bool enableFeedback;
  final Clip clipBehaviour;
  final Duration animationDuration;
  final Brightness colorBrightness;
  final FocusNode focusNode;
  final ButtonTextTheme textTheme;
  final double elevation;
  final double padding;
  final Function onPressed;
  final Function onLongPress;
  final Function onHighlightChanged;
  final Color highlightColor;
  final ButtonSize size;
  final double iconSize;
  Icon icon;
  MainAxisSize mainAxisSize;
  TextStyle textStyle;
  Text buttonText;
  Icon buttonIcon;

  WVFlatIconButton({
    this.elevation = 0,
    this.padding = 10,
    this.onPressed,
    this.size = ButtonDefaults.buttonSize,
    this.highlightColor,
    this.textTheme,
    this.onLongPress,
    this.clipBehaviour,
    this.animationDuration,
    this.colorBrightness,
    this.focusNode,
    this.onHighlightChanged,
    this.enableFeedback,
    this.icon = ButtonDefaults.basicButtonIcon,
    this.iconSize,
  });

  Widget build(BuildContext context) {
    ButtonSizes buttonSizes =
        ButtonSizes(buttonSize: this.size, padding: this.padding);
    buttonSizes.checkbuttonSize();
    this.buttonIcon = this.icon;

    return Container(
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            focusNode: this.focusNode,
            splashColor: Colors.transparent,
            highlightColor: this.highlightColor,
            padding: buttonSizes.edgeInsets,
            color: Colors.white,
            onPressed: this.onPressed,
            alignment: Alignment.center,
            iconSize: this.iconSize == null
                ? buttonSizes.iconButtonIconSize
                : this.iconSize,
            icon: this.icon,
          )
        ],
      ),
    );
  }
}
