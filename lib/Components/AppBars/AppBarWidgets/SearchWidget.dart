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
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                maxLines: 1,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 10),
                    suffixIcon: Icon(Icons.mic,color: Theme.of(context).iconTheme.color,),
                    prefixIcon: Icon(Icons.search,color: Theme.of(context).iconTheme.color,),
                    border: InputBorder.none,
                    hintStyle: Theme.of(context).textTheme.body1.copyWith(color: CustomColors.white,),
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
