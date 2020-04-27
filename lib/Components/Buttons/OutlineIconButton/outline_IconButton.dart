import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WVOutlineIconButton extends StatelessWidget {
  final bool enableFeedback;
  final Clip clipBehaviour;
  final Duration animationDuration;
  final Brightness colorBrightness;
  final FocusNode focusNode;
  final ButtonTextTheme textTheme;
  final Color highlightColor;
  final Color backgroundColor;
  final double cornerRadius;
  final double elevation;
  final double padding;
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

  WVOutlineIconButton({
    this.backgroundColor = ButtonDefaults.buttonBackgroundColor,
    this.cornerRadius,
    this.elevation = 0,
    this.padding = 10,
    this.width = ButtonDefaults.buttonWidthType,
    this.onPressed,
    this.shape = ButtonDefaults.buttonShape,
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
    ButtonWidths buttonWidths = ButtonWidths(this.width);
    buttonWidths.checkButtonWidth();
    ButtonShapes buttonShapes = ButtonShapes(this.shape, this.cornerRadius);
    buttonShapes.checkButtonShape();
    ButtonSizes buttonSizes =
        ButtonSizes(buttonSize: this.size, padding: this.padding);
    buttonSizes.checkbuttonSize();
    this.buttonIcon = this.icon;
    if (this.buttonText.style != null) {
      this.textStyle =
          this.buttonText.style.copyWith(fontSize: buttonSizes.fontSize);
    }

    return Container(
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(
            style: BorderStyle.solid, width: 2, color: this.backgroundColor),
        borderRadius: BorderRadius.circular(buttonShapes.borderRadius),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        mainAxisSize: buttonWidths.mainAxisSize,
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
