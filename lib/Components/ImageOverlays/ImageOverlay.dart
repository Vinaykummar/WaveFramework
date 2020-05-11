import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/material.dart';

class ImageOverlay extends StatelessWidget {
  final DecorationImage backgroundimage;
  final Gradient gradient;
  final double opacity;
  final Color color;
  final List<Widget> widgets;
  final MainAxisAlignment mainAxisAlignment;
  final double height;
  final double width;
  final CrossAxisAlignment crossAxisAlignment;
  final double borderRadius;
  final EdgeInsets padding;
  final bool gradientOverlay;

  const ImageOverlay({
    Key key,
    this.backgroundimage,
    this.gradient,
    this.opacity,
    this.color,
    this.widgets,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.height,
    this.width,
    this.borderRadius,
    this.padding, this.gradientOverlay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(this.borderRadius),
          image: this.backgroundimage),
      height: this.height,
      width: this.width,
      child: Stack(
        children: <Widget>[
          Opacity(
            opacity: this.opacity,
            child: Container(
              height: this.height,
              width: this.width,
              decoration: BoxDecoration(
                color: this.gradientOverlay == null || this.gradientOverlay == false ? this.color : null,
                  gradient: this.gradientOverlay == true ? this.gradient : null,
                  borderRadius: BorderRadius.circular(this.borderRadius)),
            ),
          ),
          Container(
            padding: this.padding,
            width: this.width,
            child: Column(
              crossAxisAlignment: this.crossAxisAlignment,
              mainAxisAlignment: this.mainAxisAlignment,
              children: widgets,
            ),
          )
        ],
      ),
    );
  }
}
