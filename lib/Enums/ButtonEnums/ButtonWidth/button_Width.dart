import 'package:flutter/material.dart';

enum ButtonWidthType { Block, FullWidth }

class ButtonWidths {
  final ButtonWidthType buttonWidth;
  MainAxisSize mainAxisSize;

  ButtonWidths(this.buttonWidth) : assert(buttonWidth != null);

  MainAxisSize checkButtonWidth() {
    switch (this.buttonWidth) {
      case ButtonWidthType.Block:
        // TODO: Handle this case.
        this.mainAxisSize = MainAxisSize.min;
        break;
      case ButtonWidthType.FullWidth:
        // TODO: Handle this case.
        this.mainAxisSize = MainAxisSize.max;
        break;
    }
  }
}
