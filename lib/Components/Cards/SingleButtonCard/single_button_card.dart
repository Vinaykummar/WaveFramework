import 'package:flukit/Enums/cardsize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SimpleButtonCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Color titleFontColor;
  final CardSize cardSize;
  final Function onTap;
  final double elevation;
  double height;
  double width;
  double titleFontSize;
  double subTitleFontSize;
  double imageHeight;

  SimpleButtonCard(
      {@required this.imageUrl,
      @required this.title,
      @required this.titleFontColor,
      @required this.cardSize,
      this.onTap,@required this.elevation});

  void checkCardSize() {
    switch (this.cardSize) {
      case CardSize.Small:
        // TODO: Handle this case.
        this.height = 250;
        this.width = 200;
        this.imageHeight = 140;
        this.titleFontSize = 16;
        this.subTitleFontSize = 12;
        break;
      case CardSize.Medium:
        // TODO: Handle this case.
        this.height = 275;
        this.width = 220;
        this.imageHeight = 160;
        this.titleFontSize = 18;
        this.subTitleFontSize = 12;
        break;
      case CardSize.Large:
        // TODO: Handle this case.
        this.height = 295;
        this.width = 240;
        this.imageHeight = 180;
        this.titleFontSize = 18;
        this.subTitleFontSize = 12;
        break;
      case CardSize.Mini:
        // TODO: Handle this case.
        this.height = 210;
        this.width = 165;
        this.imageHeight = 110;
        this.titleFontSize = 13;
        this.subTitleFontSize = 10;
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
          BoxShadow(color: Colors.black26,blurRadius: this.elevation),
        ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: <Widget>[
            Container(
              height: this.imageHeight,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: new NetworkImage(
                        this.imageUrl,
                      ),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10,  bottom: 5, right: 5),
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
                      fontSize: this.subTitleFontSize,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Book Now',
                            style:
                                TextStyle(color: Colors.indigo, fontSize: 12),
                          ),
                        ),
                      ],
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
