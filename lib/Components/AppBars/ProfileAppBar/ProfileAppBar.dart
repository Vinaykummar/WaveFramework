import 'package:flukit/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
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
              margin: EdgeInsets.all(3),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  SizedBox(
                    width: 20,
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: CustomColors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(
                  "Netflix",
                  style: TextStyle(
                      fontFamily: 'gilroy',
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: CustomColors.red),
                )],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: CustomColors.purple,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.add_shopping_cart,
                    color: CustomColors.red,
                    size: 28,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.search,
                    color: CustomColors.red,
                    size: 28,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
