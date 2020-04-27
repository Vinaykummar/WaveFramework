import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WVGradientIconButton extends StatelessWidget {
  final Gradient gradient;
  final bool enableFeedback;
  final Clip clipBehaviour;
  final Duration animationDuration;
  final Brightness colorBrightness;
  final FocusNode focusNode;
  final Color highlightColor;
  final Color backgroundColor;
  final double cornerRadius;
  final double elevation;
  final double padding;
  final Function onPressed;
  final Function onLongPress;
  final Function onHighlightChanged;
  final ButtonShape shape;
  final ButtonSize size;
  final double iconSize;
  Icon icon;
  MainAxisSize mainAxisSize;
  TextStyle textStyle;
  Text buttonText;
  Icon buttonIcon;

  WVGradientIconButton({
    this.backgroundColor = ButtonDefaults.buttonBackgroundColor,
    this.cornerRadius,
    this.elevation = 0,
    this.padding = 10,
    this.onPressed,
    this.shape = ButtonDefaults.buttonShape,
    this.size = ButtonDefaults.buttonSize,
    this.highlightColor,
    this.onLongPress,
    this.clipBehaviour,
    this.animationDuration,
    this.colorBrightness,
    this.focusNode,
    this.onHighlightChanged,
    this.enableFeedback,
    this.icon = ButtonDefaults.basicButtonIcon,
    this.iconSize, this.gradient = ButtonDefaults.gradient,
  });

  Widget build(BuildContext context) {
    ButtonShapes buttonShapes = ButtonShapes(this.shape, this.cornerRadius);
    buttonShapes.checkButtonShape();
    ButtonSizes buttonSizes =
    ButtonSizes(buttonSize: this.size, padding: this.padding);
    buttonSizes.checkbuttonSize();
    this.buttonIcon = this.icon;

    return Container(
      height: buttonSizes.iconButtonHeight,
      width: buttonSizes.iconButtonWidth,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: this.cornerRadius == null ? BorderRadius.circular(buttonShapes.borderRadius) : BorderRadius.circular(this.cornerRadius),
          gradient: this.gradient,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [IconButton(
          focusNode: this.focusNode,
          splashColor: Colors.transparent,
          highlightColor: this.highlightColor,
          padding: buttonSizes.edgeInsets,
          color: Colors.white,
          onPressed: this.onPressed,
          alignment: Alignment.center,
          iconSize: this.iconSize == null ? buttonSizes.iconButtonIconSize : this.iconSize,
          icon: this.icon,
        )],
      ),
    );
  }
}
