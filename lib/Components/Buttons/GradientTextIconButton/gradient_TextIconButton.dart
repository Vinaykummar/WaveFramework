import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WVGradientTextIconButton extends StatelessWidget {
  final Gradient gradient;

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
  MainAxisSize mainAxisSize;
  TextStyle textStyle;
  Text buttonText;
  final ButtonIconAlign iconAlignment;
  Icon icon;


  WVGradientTextIconButton({
    this.gradient = ButtonDefaults.gradient,
    this.icon = ButtonDefaults.gradientButtonIcon,
    this.iconAlignment = ButtonDefaults.buttonIconAlign,
    this.backgroundColor = ButtonDefaults.buttonBackgroundColor,
    this.cornerRadius,
    this.elevation = 0,
    this.padding = 10,
    this.text = ButtonDefaults.buttonText,
    this.width = ButtonWidthType.FullWidth,
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
  });

  Widget build(BuildContext context) {
    ButtonWidths buttonWidths = ButtonWidths(this.width);
    buttonWidths.checkButtonWidth();
    ButtonShapes buttonShapes = ButtonShapes(this.shape, this.cornerRadius);
    buttonShapes.checkButtonShape();
    ButtonSizes buttonSizes = ButtonSizes(
        buttonSize: this.size
        , padding: this.padding
    );
    buttonSizes.checkbuttonSize();
    this.buttonText = this.text;

    if(this.buttonText.style == null && this.size == null) {
      this.textStyle =
          TextStyle(fontSize: 22);
    } else if(this.buttonText.style != null && this.size != null){
      this.textStyle =
          this.buttonText.style.copyWith(fontSize: buttonSizes.fontSize);
    } else {
      this.textStyle = TextStyle(fontSize: buttonSizes.fontSize);
    }
    ButtonIconAlignments buttonIconAlignments = ButtonIconAlignments(
        buttonSize: this.size,
        textStyle: this.textStyle,
        buttonText: this.buttonText,
        buttonIcon: this.icon,
        iconAlignment: this.iconAlignment);
    buttonIconAlignments.checkIconAlignment();


    return Container(
      height: buttonSizes.height,
      width: buttonSizes.width,
      decoration: BoxDecoration(
          borderRadius: this.cornerRadius == null ? BorderRadius.circular(buttonShapes.borderRadius) : BorderRadius.circular(this.cornerRadius),
          gradient: this.gradient
      ),
      child: MaterialButton(
        enableFeedback: this.enableFeedback,
        hoverElevation: 0,
        focusNode: this.focusNode,
        onHighlightChanged: this.onHighlightChanged,
        animationDuration: this.animationDuration,
        colorBrightness: this.colorBrightness,
        textColor: this.textColor,
        onLongPress: this.onLongPress,
        textTheme: this.textTheme,
        materialTapTargetSize: MaterialTapTargetSize.padded,
        splashColor: Colors.transparent,
        highlightColor: this.highlightColor,
        focusElevation: 0,
        highlightElevation: 0,
        height: buttonSizes.height,
        padding: buttonSizes.edgeInsets,
        shape: RoundedRectangleBorder(
            borderRadius: this.cornerRadius == null ? BorderRadius.circular(buttonShapes.borderRadius) : BorderRadius.circular(this.cornerRadius)),
        elevation: this.elevation,
        onPressed: this.onPressed,
        child: Container(
          child: Row(
            mainAxisSize: buttonWidths.mainAxisSize,
            mainAxisAlignment: MainAxisAlignment.center,
            children: buttonIconAlignments.icons,
          ),
        ),
      ),
    );
  }
}
