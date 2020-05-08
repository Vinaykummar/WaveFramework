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
  double socialiconSize;

  double iconButtonHeight;
  double iconButtonWidth;
  double iconButtonIconSize;

  ButtonSizes({this.buttonSize, this.padding});

  checkbuttonSize() {

    switch (this.buttonSize) {
      case ButtonSize.Mini:
        // TODO: Handle this case.
        this.fontSize = 16;
        this.height=40;
        this.edgeInsets = EdgeInsets.all(this.padding);
        this.iconButtonHeight = 58;
        this.iconButtonWidth = 58;
        this.iconButtonIconSize = 28;
        break;
      case ButtonSize.Small:
        // TODO: Handle this case.
        this.fontSize = 20;
        this.edgeInsets = EdgeInsets.all(this.padding);
        this.iconButtonHeight = 60;
        this.iconButtonWidth = 60;
        this.iconButtonIconSize = 30;

        break;
      case ButtonSize.Medium:
        // TODO: Handle this case.
        this.fontSize = 24;
        this.edgeInsets = EdgeInsets.all(this.padding);
        this.iconButtonHeight = 64;
        this.iconButtonWidth = 64;
        this.iconButtonIconSize = 34;

        break;
      case ButtonSize.Large:
        // TODO: Handle this case.
        this.fontSize = 28;
        this.edgeInsets = EdgeInsets.all(this.padding);
        this.iconButtonHeight = 68;
        this.iconButtonWidth = 68;
        this.iconButtonIconSize = 38;

        break;
    }
  }
}
