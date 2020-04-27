import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WVOutlineTextButton extends StatelessWidget {
  final bool enableFeedback;
  final Clip clipBehaviour;
  final Duration animationDuration;
  final Brightness colorBrightness;
  final FocusNode focusNode;
  final Color textColor;
  final ButtonTextTheme textTheme;
  final Color highlightColor;
  final BorderSide border;
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

  WVOutlineTextButton({
    this.cornerRadius = 10,
    this.elevation = 0,
    this.padding = 10,
    this.text = ButtonDefaults.buttonOutlineText,
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
    this.border,
  });

  Widget build(BuildContext context) {
    ButtonWidths buttonWidths = ButtonWidths(this.width);
    buttonWidths.checkButtonWidth();
    ButtonShapes buttonShapes = ButtonShapes(this.shape, this.cornerRadius);
    buttonShapes.checkButtonShape();
    ButtonSizes buttonSizes = ButtonSizes(
      buttonSize: this.size,
      padding: this.padding
    );
    buttonSizes.checkbuttonSize();
    this.buttonText = this.text;

    if (this.buttonText.style != null) {
      this.textStyle = this
          .buttonText
          .style
          .copyWith(fontSize: buttonSizes.fontSize,);
    }

    return Container(
      width: buttonSizes.width,
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
            side:  BorderSide(
                color: this.border.color,
                style: this.border.style,
                width: 2
            ),
            borderRadius: this.cornerRadius != null ? BorderRadius.circular(this.cornerRadius) : BorderRadius.circular(buttonShapes.borderRadius)),
        elevation: this.elevation,
        color: Colors.transparent,
        onPressed: this.onPressed,
        child: Container(
          child: Row(
            mainAxisSize: buttonWidths.mainAxisSize,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                this.buttonText.data,
                style: this.textStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
