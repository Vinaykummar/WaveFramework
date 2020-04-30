import 'package:flukit/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicAppBar extends StatelessWidget {
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
            child: Icon(
              Icons.menu,
              color: CustomColors.black,
              size: 28,
            ),
          ),
          Expanded(
              flex: 5,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Groove Music",
                      style: TextStyle(
                          fontFamily: 'gilroy',
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: CustomColors.black),
                    ),
                  ],
                ),
              )),
          Expanded(
              child: Container(
                margin: EdgeInsets.all(3),
                child: Stack(
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
                    ),
                    Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                          color: CustomColors.green,
                          shape: BoxShape.circle
                      ),
                    ),
                  ],
                ),

          ))
        ],
      ),
    );
  }
}
