import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WVOutlineTextIconButton extends StatelessWidget {
  final ButtonIconAlign iconAlignment;
  final bool enableFeedback;
  final Clip clipBehaviour;
  final Duration animationDuration;
  final Brightness colorBrightness;
  final FocusNode focusNode;
  final Color textColor;
  final ButtonTextTheme textTheme;
  final Color highlightColor;
  Icon buttonIcon;
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
  Icon icon;
  final BorderSide border;
  MainAxisSize mainAxisSize;
  TextStyle textStyle;
  Text buttonText;

  WVOutlineTextIconButton({
    this.cornerRadius,
    this.elevation = 0,
    this.padding = 10,
    this.text = ButtonDefaults.buttonOutlineText,
    this.width = ButtonDefaults.buttonWidthType,
    this.onPressed,
    this.shape = ButtonShape.Cornered,
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
    this.icon = ButtonDefaults.outlineButtonIcon,
    this.iconAlignment = ButtonDefaults.buttonIconAlign,
    this.border = ButtonDefaults.borderSide,
  });

  Widget build(BuildContext context) {
    ButtonDefaults buttonDefaults = ButtonDefaults();
    ButtonWidths buttonWidths = ButtonWidths(this.width);
    buttonWidths.checkButtonWidth();
    ButtonShapes buttonShapes = ButtonShapes(this.shape, this.cornerRadius);
    buttonShapes.checkButtonShape();
    ButtonSizes buttonSizes =
        ButtonSizes(buttonSize: this.size, padding: this.padding);
    buttonSizes.checkbuttonSize();
    this.buttonText = this.text;
    this.buttonIcon = this.icon;
 print(this.buttonText.style);
    try {
      if(this.buttonText.style == null) {
        print('no font size by user');
        if(this.size != null) {
          print('user provided size');
          this.textStyle = TextStyle(fontSize: buttonSizes.fontSize);
        }else{
          print('user not provided size');
          this.textStyle = TextStyle(fontSize: 22);
        }
      } else {
        print(this.buttonText.style);
        this.textStyle = this.buttonText.style;
      }
    }
    catch (e) {
      print(e);
    }

    print(this.icon);
    ButtonIconAlignments buttonIconAlignments = ButtonIconAlignments(
        buttonSize: this.size,
        textStyle: this.textStyle,
        buttonText: this.buttonText,
        buttonIcon: this.icon,
        iconAlignment: this.iconAlignment);
    buttonIconAlignments.checkIconAlignment();


    return Container(
      width: buttonSizes.width,
      child: MaterialButton(
        color: Colors.transparent,
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
            side: BorderSide(
              color: this.border.color,
              style: this.border.style,
              width: 2
            ),
            borderRadius: this.cornerRadius != null
                ? BorderRadius.circular(this.cornerRadius)
                : BorderRadius.circular(buttonShapes.borderRadius)),
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
