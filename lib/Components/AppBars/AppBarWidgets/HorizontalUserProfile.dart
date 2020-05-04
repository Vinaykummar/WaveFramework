import 'package:flutter/material.dart';

class HorizontalUserProfile extends StatelessWidget {

  final Widget leadingIcon;
  final Text title;
  final double spacing;



  HorizontalUserProfile({
    Key key, this.leadingIcon, this.title, this.spacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          this.leadingIcon,
          SizedBox(width: this.spacing,),
          this.title,
        ],
      ),
    );
  }
}
