import 'package:flutter/material.dart';

class BasicIconButton extends StatelessWidget {

  final Icon icon;
  final ShapeBorder shape;
  final double elevation;
  final Color color;
  final Function onPressed;
  final double padding;

  const BasicIconButton(
      {this.icon, this.shape, this.elevation, this.color, this.onPressed, this.padding});


  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.all(this.padding),
      child: this.icon,
      shape: this.shape,
      elevation: this.elevation,
      color: this.color,
      onPressed: this.onPressed,
    )
    ;
  }
}
