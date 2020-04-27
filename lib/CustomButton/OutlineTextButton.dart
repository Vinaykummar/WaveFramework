import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/material.dart';

class FLOutlineTextButton extends StatelessWidget {
  final double buttonCornerRadius;
  final double buttonPadding;
  final Text buttonText;

  final ButtonWidth buttonWidth;

  final Function onPressed;
  final BorderSide buttonBorder;
  MainAxisSize mainAxisSize;

  FLOutlineTextButton(
      {this.buttonCornerRadius = 5,
      this.buttonPadding = 10,
      this.buttonText = CustomColors.text,
      this.onPressed,
      this.buttonWidth,
      this.buttonBorder});

  Widget build(BuildContext context) {
    ButtonFunctions buttonFunctions = ButtonFunctions(
        buttonWidth: this.buttonWidth, buttonText: this.buttonText);
    buttonFunctions.checkButtonWidth();

    return OutlineButton(
      borderSide: this.buttonBorder,
      padding: EdgeInsets.all(this.buttonPadding),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.buttonCornerRadius)),
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
