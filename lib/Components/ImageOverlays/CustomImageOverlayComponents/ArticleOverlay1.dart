import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'package:flukit/Enums/ButtonEnums/ButtonWidth/button_Width.dart';
import 'package:flutter/material.dart';

import '../ImageOverlay.dart';

class ArticleOverlay1 extends StatelessWidget {
  const ArticleOverlay1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
      backgroundimage: DecorationImage(
          image: new NetworkImage(
              'https://images.pexels.com/photos/1181354/pexels-photo-1181354.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
          fit: BoxFit.cover),
      height: 250,
      gradientOverlay: true,
      gradient: LinearGradient(
          colors: [Colors.transparent, Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      widgets: <Widget>[
        Text(
          'IBM Cloud',
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          softWrap: true,
          style: Theme.of(context).textTheme.title.copyWith(
              color: CustomColors.white,
              fontFamily: 'Roboto',
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
        Text(
          'Developing The Future Blockchain Using IBM Cloud',
          softWrap: true,
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(color: CustomColors.white, fontSize: 24),
        ),
        WVBasicTextButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          text: Text(
            'Watch The Story',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
          shape: ButtonShape.Cornered,
          size: ButtonSize.Mini,
          width: ButtonWidthType.Block,
        ),
      ],
      padding: EdgeInsets.all(20),
      opacity: 1,
      borderRadius: 20,
    );
  }
}
