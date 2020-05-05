import 'package:flukit/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              height: 38,
              decoration: BoxDecoration(
                color: CustomColors.red.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                style: TextStyle(color: CustomColors.red, fontSize: 14),
                maxLines: 1,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      CupertinoIcons.search,
                      color: CustomColors.red,
                      size: 22,
                    ),
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: CustomColors.red, fontSize: 16,),
                    hintMaxLines: 1,
                    hintText: 'Search Netflix'),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
