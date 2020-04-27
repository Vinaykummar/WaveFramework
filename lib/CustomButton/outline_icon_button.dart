import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Enums/button_width.dart';
import 'package:flutter/material.dart';

class FLOutlineTextIconButton extends StatelessWidget {

  final double buttonCornerRadius;
  final double buttonPadding;
  final Text buttonText;
  final Icon buttonIcon;
  final ButtonWidth buttonWidth;
  final ButtonIconAlignment iconAlignment;
  final Function onPressed;
  final BorderSide buttonBorder;
  MainAxisSize mainAxisSize;
  List<Widget> icons;

  FLOutlineTextIconButton(
      {
      this.buttonCornerRadius = 5,
      this.buttonPadding = 10,
      this.buttonText = CustomColors.text,
      this.onPressed,
      this.buttonIcon,
      this.buttonWidth,
      this.iconAlignment,
      this.buttonBorder});



  Widget build(BuildContext context) {
    ButtonFunctions buttonFunctions = ButtonFunctions(
        buttonWidth: this.buttonWidth,
        iconAlignment: this.iconAlignment,
        buttonIcon: this.buttonIcon,
        buttonText: this.buttonText);
    buttonFunctions.checkButtonWidth();
    buttonFunctions.checkIconAlignment();
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
          children: buttonFunctions.icons,
        ),
      ),
    );
  }
}
