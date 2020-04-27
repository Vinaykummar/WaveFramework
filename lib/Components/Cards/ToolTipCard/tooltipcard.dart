import 'package:flukit/Enums/cardsize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ToolTipCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Color titleFontColor;
  final String toolTipText;
  final Color toolTipBackgroundColor;
  final Color toolTipColor;
  final CardSize cardSize;
  final Function onTap;
  double height;
  double width;
  double titleFontSize;
  double toolTipFontSize;
  double imageHeight;
  double toolTipWidth;
  double toolTipHeight;

  ToolTipCard(
      {@required this.imageUrl,
        @required this.title,
        @required this.titleFontColor,
        @required this.toolTipText,
        @required this.toolTipBackgroundColor,
        @required this.toolTipColor,
        @required this.cardSize,
        this.onTap});

  void checkCardSize() {
    switch (this.cardSize) {
      case CardSize.Small:
      // TODO: Handle this case.
        this.height = 240;
        this.width = 200;
        this.imageHeight = 140;
        this.titleFontSize = 18;
        this.toolTipFontSize = 10;
        this.toolTipWidth = 60;
        this.toolTipHeight = 20;
        break;
      case CardSize.Medium:
      // TODO: Handle this case.
        this.height = 260;
        this.width = 220;
        this.imageHeight = 160;
        this.titleFontSize = 20;
        this.toolTipFontSize = 10;
        this.toolTipWidth = 60;
        this.toolTipHeight = 20;
        break;
      case CardSize.Large:
      // TODO: Handle this case.
        this.height = 280;
        this.width = 240;
        this.imageHeight = 180;
        this.titleFontSize = 20;
        this.toolTipFontSize = 10;
        this.toolTipWidth = 60;
        this.toolTipHeight = 20;
        break;
      case CardSize.Mini:
        // TODO: Handle this case.
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    checkCardSize();
    return InkWell(
      enableFeedback: true,
      onTap: this.onTap,
      child: Container(
        height: this.height,
        width: this.width,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 20.0),
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: <Widget>[
            Container(
              height: this.imageHeight,
              width: this.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: new NetworkImage(
                        this.imageUrl,
                      ),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: this.toolTipHeight,
                    width: this.toolTipWidth,
                    alignment: Alignment.center,
                    child: Text(
                      this.toolTipText,
                      style: TextStyle(
                          fontSize: this.toolTipFontSize,
                          color: this.toolTipColor,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: this.toolTipBackgroundColor,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    this.title,
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: this.titleFontSize,
                        fontWeight: FontWeight.bold,
                        color: this.titleFontColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
