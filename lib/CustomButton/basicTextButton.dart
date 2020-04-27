import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/material.dart';


class FLBasicTextButton extends StatelessWidget {
  final Color backgroundColor;
  final double buttonCornerRadius;
  final double buttonElevation;
  final double buttonPadding;
  final Text buttonText;
  final ButtonWidth buttonWidth;
  final Function onPressed;
  MainAxisSize mainAxisSize;

  FLBasicTextButton(
      {this.backgroundColor = CustomColors.purple,
        this.buttonCornerRadius = 10,
        this.buttonElevation =0,
        this.buttonPadding=10,
        this.buttonText = CustomColors.text,
        this.buttonWidth = ButtonWidth.TextWidth,
        this.onPressed,
        });

  Widget build(BuildContext context) {
    ButtonFunctions buttonFunctions = ButtonFunctions(
        buttonWidth: this.buttonWidth, buttonText: this.buttonText);
    buttonFunctions.checkButtonWidth();
    return RaisedButton(
      padding: EdgeInsets.all(this.buttonPadding),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.buttonCornerRadius)),
      elevation: this.buttonElevation,
      color: this.backgroundColor,
      onPressed: this.onPressed,
      child: Container(
        child: Row(
          mainAxisSize: buttonFunctions.mainAxisSize,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [this.buttonText],
        ),
      ),
    );
  }

}
