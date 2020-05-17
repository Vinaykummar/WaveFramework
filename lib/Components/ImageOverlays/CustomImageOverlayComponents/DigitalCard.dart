
import 'package:flukit/Colors/colors.dart';
import 'package:flukit/Components/HorizontalItems/HorizontalItems.dart';

import '../ImageOverlay.dart';
import 'package:flutter/material.dart';

class DigitalCard extends StatelessWidget {
  const DigitalCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageOverlay(
      backgroundimage: DecorationImage(image: new AssetImage('assets/images/a3.png'),fit: BoxFit.cover),
      padding: EdgeInsets.all(15),
      opacity: 0.5,
      gradientOverlay: true,
      gradient: LinearGradient(colors: [Colors.black,Colors.black]),
      height: 200,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      borderRadius: 20,
      widgets: <Widget>[

        HorizontalItems(
          leadings: <Widget>[
            Icon(Icons.check_circle,color: CustomColors.white,size: 18,),
            SizedBox(width: 5),
            Text(
              'HDFC',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: true,
              style: Theme.of(context).textTheme.title.copyWith(
                  color: CustomColors.white, fontSize: 16),
            ),
          ],
          actions: <Widget>[
            Text(
              'Visa',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: true,
              style: Theme.of(context).textTheme.title.copyWith(
                  color: CustomColors.white, fontSize: 22),
            ),
          ],
        ),

        HorizontalItems(
            leadingMainAxisAlignment: MainAxisAlignment.start,
            leadings: [Text('8962 6324 **** 3214',softWrap: false,maxLines: 1 ,style: TextStyle(color: CustomColors.white,fontSize: 26,letterSpacing: 3),)]),
        HorizontalItems(
          leadingMainAxisAlignment: MainAxisAlignment.spaceBetween,
          leadings: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Card Holder',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: true,
                  style: Theme.of(context).textTheme.title.copyWith(
                      color: CustomColors.white,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Bruno Mars',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: Theme.of(context).textTheme.title.copyWith(
                      color: CustomColors.white, fontSize: 18,letterSpacing: 2),
                ),
              ],
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Expiry',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: true,
                  style: Theme.of(context).textTheme.title.copyWith(
                      color: CustomColors.white,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '03/26',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: Theme.of(context).textTheme.title.copyWith(
                      color: CustomColors.white, fontSize: 18,letterSpacing: 2),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'CVV',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: true,
                  style: Theme.of(context).textTheme.title.copyWith(
                      color: CustomColors.white,
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '826',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                  style: Theme.of(context).textTheme.title.copyWith(
                      color: CustomColors.white, fontSize: 18,letterSpacing: 2),
                ),
              ],
            )

          ],
        ),
      ],
    );
  }
}
