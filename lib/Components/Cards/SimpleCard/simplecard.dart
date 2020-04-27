import 'package:flukit/Enums/cardsize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SimpleCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Color titleFontColor;
  final CardSize cardSize;
  final Function onTap;
  double height;
  double width;
  double titleFontSize;

  double imageHeight;

  SimpleCard(
      {@required this.imageUrl,
      @required this.title,
      @required this.titleFontColor,
      @required this.cardSize,
      this.onTap});

  void checkCardSize() {
    switch (this.cardSize) {
      case CardSize.Small:
        // TODO: Handle this case.
        this.height = 225;
        this.width = 200;
        this.imageHeight = 140;
        this.titleFontSize = 16;
        break;
      case CardSize.Medium:
        // TODO: Handle this case.
        this.height = 245;
        this.width = 220;
        this.imageHeight = 160;
        this.titleFontSize = 18;

        break;
      case CardSize.Large:
        // TODO: Handle this case.
        this.height = 265;
        this.width = 240;
        this.imageHeight = 180;
        this.titleFontSize = 18;

        break;
      case CardSize.Mini:
        // TODO: Handle this case.
        this.height = 210;
        this.width = 165;
        this.imageHeight = 110;
        this.titleFontSize = 13;

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
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 15, right: 10, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.title,
                    style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: this.titleFontSize,
                        fontWeight: FontWeight.bold,
                        color: this.titleFontColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Send your invitation link to www.google.com",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      letterSpacing: 0.5,
                      color: Colors.black54,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
