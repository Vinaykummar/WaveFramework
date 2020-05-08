import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WVFlatTextButton extends StatelessWidget {
  final bool enableFeedback;
  final Clip clipBehaviour;
  final Duration animationDuration;
  final Brightness colorBrightness;
  final FocusNode focusNode;
  final Color textColor;
  final ButtonTextTheme textTheme;
  final Color highlightColor;
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

  WVFlatTextButton({
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

 print(this.buttonText.style);
    try {
      if(this.size != null) {
          this.textStyle = this.buttonText.style != null ? this.buttonText.style : TextStyle(color: Theme.of(context).primaryColor,fontSize: buttonSizes.fontSize);
      } else  {
          this.textStyle = TextStyle(color: CustomColors.white,fontSize: 22);
      }
    }
    catch (e) {
      print(e);
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
