enum ButtonShape { Round, Cornered, Flat }

class ButtonShapes {
  final ButtonShape buttonShape;
  double borderRadius;

  final double cornerRadius;

  ButtonShapes(this.buttonShape, this.cornerRadius);

  checkButtonShape() {
    if (this.buttonShape == null) {
      this.borderRadius = this.cornerRadius;
    } else {
      switch (this.buttonShape) {
        case ButtonShape.Round:
          // TODO: Handle this case.
          this.borderRadius = 50;
          break;
        case ButtonShape.Cornered:
          // TODO: Handle this case.
          this.borderRadius = 10;
          break;
        case ButtonShape.Flat:
          // TODO: Handle this case.
          this.borderRadius = 0;
          break;
      }
    }
  }
}
