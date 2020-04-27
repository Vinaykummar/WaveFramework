import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/material.dart';

class FLPlainIconButton extends StatelessWidget {
  final Color backgroundColor;
  final double buttonCornerRadius;
  final double buttonElevation;
  final double buttonPadding;
  final Text buttonText;
  final Icon buttonIcon;
  final ButtonWidth buttonWidth;
  final ButtonIconAlignment iconAlignment;
  final Function onPressed;
  MainAxisSize mainAxisSize;
  List<Widget> icons;

  FLPlainIconButton(
      {this.backgroundColor = CustomColors.indigo,
        this.buttonCornerRadius = 5,
        this.buttonElevation = 0,
        this.buttonPadding = 10,
        this.buttonText = CustomColors.text,
        this.onPressed,
        this.buttonIcon,
        this.buttonWidth,
        this.iconAlignment});

  Widget build(BuildContext context) {
    ButtonFunctions buttonFunctions = ButtonFunctions(
        buttonWidth: this.buttonWidth,
        iconAlignment: this.iconAlignment,
        buttonIcon: this.buttonIcon,
        buttonText: this.buttonText
    );
    buttonFunctions.checkButtonWidth();
    buttonFunctions.checkIconAlignment();
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
          children: [
            this.buttonIcon
          ],
        ),
      ),
    );
  }
}
