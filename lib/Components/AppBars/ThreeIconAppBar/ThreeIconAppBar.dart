import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class ThreeIconAppBar extends StatelessWidget {
  const ThreeIconAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: CustomColors.black.withOpacity(0.5),
                style: BorderStyle.solid,
                width: 0.3,
              ))),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    iconSize: 28,
                    icon: Icon(
                      Icons.menu,
                      color: CustomColors.red,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Netflix", style: TextStyle(fontFamily: 'gilroy', fontSize: 28,fontWeight: FontWeight.bold, color: CustomColors.red),
                  )
                ],
              ),
            ),
            flex: 1,

          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  IconButton(
                    iconSize: 30,
                    icon: Icon(
                      Icons.notifications_none,
                      color: CustomColors.red,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: CustomColors.red,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    iconSize: 30,
                    icon: Icon(
                      Icons.search,
                      color: CustomColors.red,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}