import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WvFlatIconButton extends StatelessWidget {
  final ButtonIconAlign iconAlignment;
  final bool enableFeedback;
  final Clip clipBehaviour;
  final Duration animationDuration;
  final Brightness colorBrightness;
  final FocusNode focusNode;
  final Color textColor;
  final ButtonTextTheme textTheme;
  final Color highlightColor;
  final Color backgroundColor;
  final double cornerRadius;
  final double elevation;
  final double padding;
  final Text text;
  final ButtonWidthType width;
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

  WvFlatIconButton({
    this.backgroundColor ,
    this.cornerRadius,
    this.elevation = 0,
    this.padding = 10,
    this.text = ButtonDefaults.buttonText,
    this.width = ButtonDefaults.buttonWidthType,
    this.onPressed,
    this.shape = ButtonDefaults.buttonShape,
    this.size = ButtonDefaults.buttonSize,
    this.highlightColor,
    this.textTheme,
    this.onLongPress,
    this.textColor,
    this.clipBehaviour,
    this.animationDuration,
    this.colorBrightness,
    this.focusNode,
    this.onHighlightChanged,
    this.enableFeedback,
    this.icon = ButtonDefaults.basicButtonIcon,
    this.iconAlignment = ButtonDefaults.buttonIconAlign, this.iconSize,
  });

  Widget build(BuildContext context) {

    ButtonSizes buttonSizes =
    ButtonSizes(buttonSize: this.size, padding: this.padding);
    buttonSizes.checkbuttonSize();



    return IconButton(
      focusNode: this.focusNode,
      splashColor: Colors.transparent,
      highlightColor: this.highlightColor,
      padding: buttonSizes.edgeInsets,
      color: Theme.of(context).primaryColor,
      onPressed: this.onPressed,
      alignment: Alignment.center,
      iconSize: this.iconSize == null ? buttonSizes.iconButtonIconSize : this.iconSize,
      icon: this.icon,
    );
  }
}
