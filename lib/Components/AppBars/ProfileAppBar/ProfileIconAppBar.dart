import 'package:flukit/Colors/colors.dart';
import 'package:flutter/material.dart';

class ProfileIconAppBar extends StatelessWidget {
  const ProfileIconAppBar({
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage(
                                  'https://images.pexels.com/photos/838875/pexels-photo-838875.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
                          color: CustomColors.blue,
                          shape: BoxShape.circle,
                        ),
                        height: 40,
                        width: 40,
                      ),
                      Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                            color: CustomColors.green, shape: BoxShape.circle),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Netflix",
                    style: TextStyle(
                        fontFamily: 'gilroy',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.red),
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
