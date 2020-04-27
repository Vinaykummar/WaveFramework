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
  final Function onPressed;
  final Function onLongPress;
  final Function onHighlightChanged;
  TextStyle textStyle;
  Text buttonText;
  final ButtonSize size;

  WVFlatTextButton({
    this.cornerRadius = 10,
    this.elevation = 0,
    this.padding = 10,
    this.text = ButtonDefaults.buttonOutlineText,
    this.onPressed,
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

    ButtonSizes buttonSizes = ButtonSizes(
        buttonSize: this.size,
        padding: this.padding
    );
    buttonSizes.checkbuttonSize();
    this.buttonText = this.text;

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
