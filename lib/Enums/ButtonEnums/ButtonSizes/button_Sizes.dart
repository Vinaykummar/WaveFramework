import 'package:flutter/material.dart';

enum ButtonSize { Mini, Small, Medium, Large }

class ButtonSizes {
  final ButtonSize buttonSize;
  double fontSize;
  double height;
  EdgeInsets edgeInsets;
  double padding;
  double width;
  double iconSize;
  double iconButtonHeight;
  double iconButtonWidth;
  double iconButtonIconSize;

  ButtonSizes({this.buttonSize, this.padding});

  checkbuttonSize() {

    switch (this.buttonSize) {
      case ButtonSize.Mini:
        // TODO: Handle this case.
        this.fontSize = 12;
        this.height = 28;
        this.edgeInsets = EdgeInsets.all(0);
        this.width = 75;
        this.iconButtonHeight = 48;
        this.iconButtonWidth = 48;
        this.iconButtonIconSize = 25;
        break;
      case ButtonSize.Small:
        // TODO: Handle this case.
        this.fontSize = 18;
        this.height = 40;
        this.edgeInsets = EdgeInsets.all(this.padding);
        this.iconButtonHeight = 62;
        this.iconButtonWidth = 62;
        this.iconButtonIconSize = 40;

        break;
      case ButtonSize.Medium:
        // TODO: Handle this case.
        this.fontSize = 22;
        this.height = 50;
        this.edgeInsets = EdgeInsets.all(this.padding);
        this.iconButtonHeight = 72;
        this.iconButtonWidth = 72;
        this.iconButtonIconSize = 50;

        break;
      case ButtonSize.Large:
        // TODO: Handle this case.
        this.fontSize = 24;
        this.height = 58;
        this.edgeInsets = EdgeInsets.all(this.padding);
        this.iconButtonHeight = 82;
        this.iconButtonWidth = 82;
        this.iconButtonIconSize = 60;

        break;
    }
  }
}
