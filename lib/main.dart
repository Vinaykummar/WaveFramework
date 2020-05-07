import 'package:flukit/Colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Components/AppBars/DefaultAppBars/MultipleItemAppBar/MultipleItemAppBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: CustomColors.indigo,
          accentColor: CustomColors.black,
          fontFamily: 'gilroy',
          brightness: Brightness.light,
          textTheme: TextTheme(
              body1: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MultipleItemAppBar(
        bottomBorder: BorderSide(color: Colors.transparent, width: 0),
        backgroundColor: Colors.white,
        leading: IconButton(
          iconSize: 28,
          icon: Icon(
            IconData(0xEB2B, fontFamily: 'boxicons'),
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          '.wave',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          softWrap: false,
          style: Theme.of(context)
              .textTheme
              .body1
              .copyWith(color: Theme.of(context).primaryColor),
        ),
        actions: [
          IconButton(
            iconSize: 24,
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                IconData(0xE929, fontFamily: 'boxicons'),
                color: Theme.of(context).primaryColor,
                size: 65,
              ),
              RaisedButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Text('hello'),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
