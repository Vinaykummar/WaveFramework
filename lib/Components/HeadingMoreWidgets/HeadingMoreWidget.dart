import 'package:flukit/Components/Avatars/Avatar/Avatar.dart';
import 'package:flukit/Constants/defaults.dart';
import 'package:flukit/Enums/Avatars/AvatarEnums.dart';
import 'package:flutter/material.dart';

class HeadingMoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Popular',
                style: Theme.of(context).textTheme.title.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'More',
                  style: TextStyle(
                      fontSize: 16, color: Theme.of(context).primaryColor),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Avatar(
                onlineStatusColor: Theme.of(context).primaryColor,
                statusIconHeight: 20,
                statusIconWidth: 20,
                enableOnlineStatus: true,
                avatarShape: AvatarShape.Circle,
                avatarBorderType: AvatarBorderType.Plain,
                image: AppBarDefaults.avatarImage,
                imageHeight: 60,
                imageWidth: 60,
                onAvatarTap: () {},
              ),
              SizedBox(width: 10,),
              Avatar(
                onlineStatusColor: Theme.of(context).primaryColor,
                statusIconHeight: 20,
                statusIconWidth: 20,
                enableOnlineStatus: true,
                avatarShape: AvatarShape.Circle,
                avatarBorderType: AvatarBorderType.Plain,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-5.png')),
                imageHeight: 60,
                imageWidth: 60,
                onAvatarTap: () {},
              ),
              SizedBox(width: 10,),
              Avatar(
                onlineStatusColor: Theme.of(context).primaryColor,
                statusIconHeight: 20,
                statusIconWidth: 20,
                enableOnlineStatus: true,
                avatarShape: AvatarShape.Circle,
                avatarBorderType: AvatarBorderType.Plain,
                image:DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-6.png')),
                imageHeight: 60,
                imageWidth: 60,
                onAvatarTap: () {},
              ),
              SizedBox(width: 10,),
              Avatar(
                onlineStatusColor: Theme.of(context).primaryColor,
                statusIconHeight: 20,
                statusIconWidth: 20,
                enableOnlineStatus: true,
                avatarShape: AvatarShape.Circle,
                avatarBorderType: AvatarBorderType.Plain,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-7.png')),
                imageHeight: 60,
                imageWidth: 60,
                onAvatarTap: () {},
              ),
              SizedBox(width: 10,),
              Avatar(
                onlineStatusColor: Theme.of(context).primaryColor,
                statusIconHeight: 20,
                statusIconWidth: 20,
                enableOnlineStatus: true,
                avatarShape: AvatarShape.Circle,
                avatarBorderType: AvatarBorderType.Plain,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-8.png')),
                imageHeight: 60,
                imageWidth: 60,
                onAvatarTap: () {},
              ),
              SizedBox(width: 10,),

            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Trending',
                style: Theme.of(context).textTheme.title.copyWith(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'More',
                  style: TextStyle(
                      fontSize: 16, color: Theme.of(context).primaryColor),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Avatar(
                avatarShape: AvatarShape.Cornered,
                avatarBorderType: AvatarBorderType.Plain,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/a5.jpg')),
                imageHeight: 180,
                imageWidth: double.infinity,
                onAvatarTap: () {},
              ),
              SizedBox(height: 10,),
              Avatar(

                avatarShape: AvatarShape.Cornered,
                avatarBorderType: AvatarBorderType.Plain,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/a1.jpg')),
                imageHeight: 180,
                imageWidth: double.infinity,
                onAvatarTap: () {},
              ),
              SizedBox(height: 10,),
              Avatar(
                avatarShape: AvatarShape.Cornered,
                avatarBorderType: AvatarBorderType.Plain,
                image:DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/a2.png')),
                imageHeight: 180,
                imageWidth: double.infinity,
                onAvatarTap: () {},
              ),
              SizedBox(height: 10,),
              Avatar(

                avatarShape: AvatarShape.Cornered,
                avatarBorderType: AvatarBorderType.Plain,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/a3.png')),
                imageHeight: 180,

                imageWidth: double.infinity,
                onAvatarTap: () {},
              ),
              SizedBox(height: 10,),
              Avatar(

                avatarShape: AvatarShape.Cornered,
                avatarBorderType: AvatarBorderType.Plain,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/images/a4.jpg')),
                imageHeight: 180,

                imageWidth: double.infinity,
                onAvatarTap: () {},
              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ],
    );
  }
}
