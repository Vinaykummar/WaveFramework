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
  final Function onPressed;
  final Function onLongPress;
  final Function onHighlightChanged;
  final ButtonShape shape;
  final ButtonSize size;
  final double iconSize;
  final BorderSide border;
  Icon icon;
  MainAxisSize mainAxisSize;
  TextStyle textStyle;
  Text buttonText;
  Icon buttonIcon;

  WVOutlineIconButton({
    this.backgroundColor ,
    this.cornerRadius,
    this.elevation = 0,
    this.padding = 10,
    this.text = ButtonDefaults.buttonText,
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
    this.iconAlignment = ButtonDefaults.buttonIconAlign,
    this.iconSize, this.border,
  });

  Widget build(BuildContext context) {

    ButtonShapes buttonShapes = ButtonShapes(this.shape, this.cornerRadius);
    buttonShapes.checkButtonShape();
    ButtonSizes buttonSizes =
        ButtonSizes(buttonSize: this.size, padding: this.padding);
    buttonSizes.checkbuttonSize();
    this.buttonText = this.text;
    this.buttonIcon = this.icon;
    if (this.buttonText.style != null) {
      this.textStyle =
          this.buttonText.style.copyWith(fontSize: buttonSizes.fontSize);
    }
    ButtonIconAlignments buttonIconAlignments = ButtonIconAlignments(
        buttonSize: this.size,
        textStyle: this.textStyle,
        buttonText: this.buttonText,
        buttonIcon: this.icon,
        iconAlignment: this.iconAlignment);
    buttonIconAlignments.checkIconAlignment();

    return Container(
      height: buttonSizes.iconButtonHeight,
      width: buttonSizes.iconButtonWidth,
      decoration: BoxDecoration(
        border: this.border != null ?  Border.all(
          color: this.border.color,
          width: this.border.width,
          style: this.border.style
        ) : Border.all(
            color: Theme.of(context).primaryColor,
            width: 2,
            style: BorderStyle.solid
        ),
        borderRadius: BorderRadius.circular(buttonShapes.borderRadius),
      ),
      child: IconButton(
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
      ),
    );
  }
}
