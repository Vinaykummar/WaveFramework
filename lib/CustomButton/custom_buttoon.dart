import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class FLTextIconButton extends StatelessWidget {
  final Color backgroundColor;
  final double buttonCornerRadius;
  final double buttonElevation;
  final double buttonPadding;
  final Text buttonText;
  final Function onPressed;

  FLTextIconButton(
      {this.backgroundColor = CustomColors.indigo,
      this.buttonCornerRadius = 5,
      this.buttonElevation = 0,
      this.buttonPadding = 10,
      this.buttonText = CustomColors.text, this.onPressed});

  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(this.buttonPadding),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.buttonCornerRadius)),
      elevation: this.buttonElevation,
      color: this.backgroundColor,
      onPressed: this.onPressed,
      child: Container(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[this.buttonText],
        ),
      ),
    );
  }
}
