import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flutter/material.dart';

enum ButtonIconAlign { Left, Right }

class ButtonIconAlignments {
  final ButtonIconAlign iconAlignment;
  List<Widget> icons;
  final Icon buttonIcon;
  final Text buttonText;
  final TextStyle textStyle;
  final ButtonSize buttonSize;
  Icon icon;
  double sizedBoxWidth;

  ButtonIconAlignments({
    this.buttonSize,
    this.iconAlignment,
    this.buttonIcon,
    this.buttonText,
    this.textStyle,
  });

  void checkIconAlignment() {

    if(this.buttonIcon.size == null) {
      switch (this.buttonSize) {
        case ButtonSize.Mini:
        // TODO: Handle this case.
          this.icon = Icon(
            this.buttonIcon.icon,
            color: this.buttonIcon.color,
            size: 12,
          );
          this.sizedBoxWidth = 5;
          break;
        case ButtonSize.Small:
        // TODO: Handle this case.
          this.icon = Icon(
            this.buttonIcon.icon,
            color: this.buttonIcon.color,
            size: 18,
          );
          this.sizedBoxWidth = 8;

          break;
        case ButtonSize.Medium:
        // TODO: Handle this case.
          this.icon = Icon(
            this.buttonIcon.icon,
            color: this.buttonIcon.color,
            size: 24,
          );
          this.sizedBoxWidth = 12;

          break;
        case ButtonSize.Large:
        // TODO: Handle this case.
          this.icon = Icon(
            this.buttonIcon.icon,
            color: this.buttonIcon.color,
            size: 26,
          );
          this.sizedBoxWidth = 15;

          break;
      }
    } else {
      this.icon = Icon(
        this.buttonIcon.icon,
        color: this.buttonIcon.color,
        size: this.buttonIcon.size,
      );
    }




    switch (this.iconAlignment) {
      case ButtonIconAlign.Left:
        // TODO: Handle this case.
        this.icons = [
          this.icon,
          SizedBox(
            width: this.sizedBoxWidth,
          ),
          Text(
            this.buttonText.data,
            style: this.textStyle,
          ),
        ];
        break;
      case ButtonIconAlign.Right:
        // TODO: Handle this case.
        this.icons = [
          Text(
            this.buttonText.data,
            style: this.textStyle,
          ),
          SizedBox(
            width: this.sizedBoxWidth,
          ),
          this.icon,
        ];
        break;
    }
  }
}
