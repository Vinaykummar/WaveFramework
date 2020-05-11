//import 'package:flutter/material.dart';
//
//class More extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return InkWell(
//      onTap: () {},
//      child: Container(
//        padding: EdgeInsets.all(5),
//        width: double.infinity,
//        child: Row(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            Flexible(
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.center,
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Text(
//                    'Popular Books',
//                    maxLines: 1,
//                    softWrap: false,
//                    overflow: TextOverflow.ellipsis,
//                    style: TextStyle(
//                      fontFamily: 'Gilroy',
//                      fontSize: 20,
//                      fontWeight: FontWeight.bold,
//                      color: Theme.of(context).primaryColor,
//                    ),
//                  ),
//                  SizedBox(
//                    height: 3,
//                  ),
//                  Text(
//                    '100+ Books added everyday',
//                    style: TextStyle(
//                      fontSize: 12,
//                      color: Theme.of(context).primaryColor.withOpacity(0.6),
//                    ),
//                  )
//                ],
//              ),
//            ),
//            Container(
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.end,
//                children: [
//                  Icon(Icons.arrow_forward_ios,color: Theme.of(context).primaryColor,)
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
//    ),
//    SizedBox(
//    height: 15,
//    ),
//    SingleChildScrollView(
//    scrollDirection: Axis.horizontal,
//    child: Row(
//    children: <Widget>[
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: AppBarDefaults.avatarImage,
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-5.png')),
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image:DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-6.png')),
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-7.png')),
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-8.png')),
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    ],
//    ),
//    ),
//    SizedBox(height: 20,),
//    InkWell(
//    onTap: () {},
//    child: Container(
//    padding: EdgeInsets.all(5),
//    width: double.infinity,
//    child: Row(
//    crossAxisAlignment: CrossAxisAlignment.center,
//    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//    children: <Widget>[
//    Flexible(
//    child: Column(
//    mainAxisAlignment: MainAxisAlignment.center,
//    crossAxisAlignment: CrossAxisAlignment.start,
//    children: <Widget>[
//    Text(
//    'Recently Updated',
//    maxLines: 1,
//    softWrap: false,
//    overflow: TextOverflow.ellipsis,
//    style: TextStyle(
//    fontFamily: 'Gilroy',
//    fontSize: 20,
//    fontWeight: FontWeight.bold,
//    color: Theme.of(context).primaryColor,
//    ),
//    ),
//    SizedBox(
//    height: 3,
//    ),
//    Text(
//    '100+ Books added everyday',
//    style: TextStyle(
//    fontSize: 12,
//    color: Theme.of(context).primaryColor.withOpacity(0.6),
//    ),
//    )
//    ],
//    ),
//    ),
//    Container(
//    child: Row(
//    mainAxisAlignment: MainAxisAlignment.end,
//    children: [
//    Icon(Icons.arrow_forward_ios,color: Theme.of(context).primaryColor,)
//    ],
//    ),
//    )
//    ],
//    ),
//    ),
//    ),
//    SizedBox(height: 15,),
//    SingleChildScrollView(
//    scrollDirection: Axis.horizontal,
//    child: Row(
//    children: <Widget>[
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: AppBarDefaults.avatarImage,
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-5.png')),
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image:DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-6.png')),
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-7.png')),
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-8.png')),
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    ],
//    ),
//    ),
//    SizedBox(height: 20,),
//    InkWell(
//    onTap: () {},
//    child: Container(
//    padding: EdgeInsets.all(5),
//    width: double.infinity,
//    child: Row(
//    crossAxisAlignment: CrossAxisAlignment.center,
//    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//    children: <Widget>[
//    Flexible(
//    child: Column(
//    mainAxisAlignment: MainAxisAlignment.center,
//    crossAxisAlignment: CrossAxisAlignment.start,
//    children: <Widget>[
//    Text(
//    'Trending Now',
//    maxLines: 1,
//    softWrap: false,
//    overflow: TextOverflow.ellipsis,
//    style: TextStyle(
//    fontFamily: 'Gilroy',
//    fontSize: 20,
//    fontWeight: FontWeight.bold,
//    color: Theme.of(context).primaryColor,
//    ),
//    ),
//    SizedBox(
//    height: 3,
//    ),
//    Text(
//    '100+ Books added everyday',
//    style: TextStyle(
//    fontSize: 12,
//    color: Theme.of(context).primaryColor.withOpacity(0.6),
//    ),
//    )
//    ],
//    ),
//    ),
//    Container(
//    child: Row(
//    mainAxisAlignment: MainAxisAlignment.end,
//    children: [
//    Icon(Icons.arrow_forward_ios,color: Theme.of(context).primaryColor,)
//    ],
//    ),
//    )
//    ],
//    ),
//    ),
//    ),
//    SizedBox(height: 15,),
//    SingleChildScrollView(
//    scrollDirection: Axis.horizontal,
//    child: Row(
//    children: <Widget>[
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: AppBarDefaults.avatarImage,
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-5.png')),
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image:DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-6.png')),
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-7.png')),
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-8.png')),
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    ],
//    ),
//    ),
//    SizedBox(height: 20,),
//    InkWell(
//    onTap: () {},
//    child: Container(
//    padding: EdgeInsets.all(5),
//    width: double.infinity,
//    child: Row(
//    crossAxisAlignment: CrossAxisAlignment.center,
//    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//    children: <Widget>[
//    Flexible(
//    child: Column(
//    mainAxisAlignment: MainAxisAlignment.center,
//    crossAxisAlignment: CrossAxisAlignment.start,
//    children: <Widget>[
//    Text(
//    'Popular Books',
//    maxLines: 1,
//    softWrap: false,
//    overflow: TextOverflow.ellipsis,
//    style: TextStyle(
//    fontFamily: 'Gilroy',
//    fontSize: 20,
//    fontWeight: FontWeight.bold,
//    color: Theme.of(context).primaryColor,
//    ),
//    ),
//    SizedBox(
//    height: 3,
//    ),
//    Text(
//    '100+ Books added everyday',
//    style: TextStyle(
//    fontSize: 12,
//    color: Theme.of(context).primaryColor.withOpacity(0.6),
//    ),
//    )
//    ],
//    ),
//    ),
//    Container(
//    child: Row(
//    mainAxisAlignment: MainAxisAlignment.end,
//    children: [
//    Icon(Icons.arrow_forward_ios,color: Theme.of(context).primaryColor,)
//    ],
//    ),
//    )
//    ],
//    ),
//    ),
//    ),
//    SizedBox(
//    height: 15,
//    ),
//    SingleChildScrollView(
//    scrollDirection: Axis.horizontal,
//    child: Row(
//    children: <Widget>[
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: AppBarDefaults.avatarImage,
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-5.png')),
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image:DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-6.png')),
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-7.png')),
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: true,
//    avatarShape: AvatarShape.Circle,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-8.png')),
//    imageHeight: 60,
//    imageWidth: 60,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    ],
//    ),
//    ),
//    SizedBox(height: 20,),
//    InkWell(
//    onTap: () {},
//    child: Container(
//    padding: EdgeInsets.all(5),
//    width: double.infinity,
//    child: Row(
//    crossAxisAlignment: CrossAxisAlignment.center,
//    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//    children: <Widget>[
//    Flexible(
//    child: Column(
//    mainAxisAlignment: MainAxisAlignment.center,
//    crossAxisAlignment: CrossAxisAlignment.start,
//    children: <Widget>[
//    Text(
//    'Recently Updated',
//    maxLines: 1,
//    softWrap: false,
//    overflow: TextOverflow.ellipsis,
//    style: TextStyle(
//    fontFamily: 'Gilroy',
//    fontSize: 20,
//    fontWeight: FontWeight.bold,
//    color: Theme.of(context).primaryColor,
//    ),
//    ),
//    SizedBox(
//    height: 3,
//    ),
//    Text(
//    '100+ Books added everyday',
//    style: TextStyle(
//    fontSize: 12,
//    color: Theme.of(context).primaryColor.withOpacity(0.6),
//    ),
//    )
//    ],
//    ),
//    ),
//    Container(
//    child: Row(
//    mainAxisAlignment: MainAxisAlignment.end,
//    children: [
//    Icon(Icons.arrow_forward_ios,color: Theme.of(context).primaryColor,)
//    ],
//    ),
//    )
//    ],
//    ),
//    ),
//    ),
//    SizedBox(height: 15,),
//    SingleChildScrollView(
//    scrollDirection: Axis.horizontal,
//    child: Row(
//    children: <Widget>[
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: AppBarDefaults.avatarImage,
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-5.png')),
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image:DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-6.png')),
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-7.png')),
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-8.png')),
//    imageHeight: 180,
//    imageWidth: 120,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    ],
//    ),
//    ),
//    SizedBox(height: 20,),
//    InkWell(
//    onTap: () {},
//    child: Container(
//    padding: EdgeInsets.all(5),
//    width: double.infinity,
//    child: Row(
//    crossAxisAlignment: CrossAxisAlignment.center,
//    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//    children: <Widget>[
//    Flexible(
//    child: Column(
//    mainAxisAlignment: MainAxisAlignment.center,
//    crossAxisAlignment: CrossAxisAlignment.start,
//    children: <Widget>[
//    Text(
//    'Trending Now',
//    maxLines: 1,
//    softWrap: false,
//    overflow: TextOverflow.ellipsis,
//    style: TextStyle(
//    fontFamily: 'Gilroy',
//    fontSize: 20,
//    fontWeight: FontWeight.bold,
//    color: Theme.of(context).primaryColor,
//    ),
//    ),
//    SizedBox(
//    height: 3,
//    ),
//    Text(
//    '100+ Books added everyday',
//    style: TextStyle(
//    fontSize: 12,
//    color: Theme.of(context).primaryColor.withOpacity(0.6),
//    ),
//    )
//    ],
//    ),
//    ),
//    Container(
//    child: Row(
//    mainAxisAlignment: MainAxisAlignment.end,
//    children: [
//    Icon(Icons.arrow_forward_ios,color: Theme.of(context).primaryColor,)
//    ],
//    ),
//    )
//    ],
//    ),
//    ),
//    ),
//    SizedBox(height: 15,),
//    SingleChildScrollView(
//    scrollDirection: Axis.horizontal,
//    child: Row(
//    children: <Widget>[
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: AppBarDefaults.avatarImage,
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-5.png')),
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image:DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-6.png')),
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-7.png')),
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    Avatar(
//    onlineStatusColor: Theme.of(context).primaryColor,
//    statusIconHeight: 15,
//    statusIconWidth: 15,
//    enableOnlineStatus: false,
//    avatarShape: AvatarShape.Cornered,
//    avatarBorderType: AvatarBorderType.Plain,
//    image: DecorationImage(
//    fit: BoxFit.cover, image: AssetImage('assets/images/avatar-8.png')),
//    imageHeight: 120,
//    imageWidth: 220,
//    onAvatarTap: () {},
//    ),
//    SizedBox(width: 10,),
//    ],
//    ),
//    );
//  }
//}
