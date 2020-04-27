import 'package:flutter/cupertino.dart';

enum ButtonWidth {
  TextWidth,
  FullWidth
}

enum ButtonIconAlignment{
  Left,
  Right
}



class ButtonFunctions {
  final ButtonWidth buttonWidth;
  MainAxisSize mainAxisSize;
  final ButtonIconAlignment iconAlignment;
  List<Widget> icons ;
  final Text buttonText;
  final Icon buttonIcon;
  final Icon leadingIcon;
  final Icon endIcon;

  ButtonFunctions({this.leadingIcon, this.endIcon,this.buttonText, this.buttonIcon,this.iconAlignment, this.buttonWidth});

  void checkButtonWidth() {
    switch (this.buttonWidth) {
      case ButtonWidth.TextWidth:
      // TODO: Handle this case.
        this.mainAxisSize = MainAxisSize.min;
        break;
      case ButtonWidth.FullWidth:
      // TODO: Handle this case.
        this.mainAxisSize = MainAxisSize.max;
        break;
    }
  }
  void checkIconAlignment() {
    switch (this.iconAlignment) {
      case ButtonIconAlignment.Left:
      // TODO: Handle this case.
        this.icons = [
          buttonIcon,
          SizedBox(
            width: 10,
          ),
          buttonText,
        ];
        break;
      case ButtonIconAlignment.Right:
      // TODO: Handle this case.
        this.icons = [
          buttonText,
          SizedBox(
            width: 10,
          ),
          buttonIcon,
        ];
        break;
    }
  }

}