import 'package:flukit/Components/AppBars/CustomAppBars/LocationAppBar1.dart';
import 'package:flukit/CustomButton/basicIconButton.dart';
import 'package:flukit/Themes/LightTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'Colors/colors.dart';
import 'Components/AppBars/DefaultAppBars/MultipleItemAppBar/MultipleItemAppBar.dart';
import 'Components/Avatars/Avatar/Avatar.dart';
import 'Components/Buttons/BasicIconButton/basic_IconButton.dart';
import 'Components/Buttons/BasicTextButton/basic_TextButton.dart';
import 'Components/Buttons/BasicTextIconButton/basic_TextIconButon.dart';
import 'Components/Buttons/OutlineIconButton/outline_IconButton.dart';
import 'Components/DiscoverMore/DiscoverMore.dart';
import 'Components/HorizontalItems/HorizontalItems.dart';
import 'Components/ImageOverlays/CustomImageOverlayComponents/ArticleOverlay1.dart';
import 'Components/ImageOverlays/CustomImageOverlayComponents/ArticleOverlay2.dart';
import 'Components/ImageOverlays/CustomImageOverlayComponents/ArticleOverlay3.dart';
import 'Components/ImageOverlays/CustomImageOverlayComponents/ArticleOverlay4.dart';
import 'Components/ImageOverlays/CustomImageOverlayComponents/DigitalCard.dart';
import 'Components/ImageOverlays/CustomImageOverlayComponents/ProjectUi.dart';
import 'Components/ImageOverlays/CustomImageOverlayComponents/UserProfileWithOverlappedAvatars.dart';
import 'Components/ImageOverlays/ImageOverlay.dart';
import 'Components/MiniStoreDetails/MiniStoreDetails.dart';
import 'Components/OverlappedAvatars/OverlappedAvatars.dart';
import 'Components/WaitingTimeWidget/WaitingTimeWidget.dart';
import 'Constants/defaults.dart';
import 'Enums/Avatars/AvatarEnums.dart';
import 'Enums/ButtonEnums/ButtonIconAlignment/button_iconAlignment.dart';
import 'Enums/ButtonEnums/ButtonShapes/button_Shapes.dart';
import 'Enums/ButtonEnums/ButtonSizes/button_Sizes.dart';
import 'Enums/ButtonEnums/ButtonWidth/button_Width.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: WaveThemes(context).lightTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Position position;

  MapboxMapController mapboxMapController;
  var appBar = LocationAppBar1();

  bool _gotCurrentPosition = false;

  Future<Position> _getCurrentPosition() async {
    this.position = await Geolocator().getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        locationPermissionLevel: GeolocationPermission.location);
    return this.position;
  }

  void _animateToUserPosition() {
    this._getCurrentPosition().then((value) {
      print("yes got your location");
      setState(() {
        this._gotCurrentPosition = true;
      });
      this.mapboxMapController.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              zoom: 15, target: LatLng(value.latitude, value.longitude))));
    }).catchError((onError) => print(onError));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          MapboxMap(
              styleString: 'mapbox://styles/tgvinay7/cka8himzn0a9n1jpd3gjo54bf',
              onMapCreated: (MapboxMapController mapboxMapController) {
                print('mapboxMapController');
                this.mapboxMapController = mapboxMapController;
                this._animateToUserPosition();
              },
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                  zoom: 12, target: LatLng(17.366131, 78.429169))),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      top: AppBarDefaults().statusBarHeight(context) + 10),
                  child: LocationAppBar1(),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    WVBasicIconButton(
                      backgroundColor: Colors.black,
                      icon: Icon(
                        Icons.gps_fixed,
                        color: Colors.white,
                      ),
                      shape: ButtonShape.Round,
                      padding: 0,
                      onPressed: () async {
                        setState(() {
                          this._gotCurrentPosition = false;
                        });
                        this._animateToUserPosition();
                        this.mapboxMapController.addSymbol(
                              SymbolOptions(
                                geometry: LatLng(17.369193, 78.423363),
                                iconImage: 'airport-15',
                              ),
                            );
                      },
                      size: ButtonSize.Mini,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      MiniStoreDetails(),
                      SizedBox(
                        width: 10,
                      ),
                      MiniStoreDetails(),
                      SizedBox(
                        width: 10,
                      ),
                       MiniStoreDetails(),
                      SizedBox(
                        width: 10,
                      ),
                      MiniStoreDetails(),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                this._gotCurrentPosition == false
                    ? ImageOverlay(
                        solidBackground: true,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        padding: EdgeInsets.all(20),
                        opacity: 1,
                        color: Colors.black,
                        borderRadius: 20,
                        widgets: [
                          HorizontalItems(
                            actions: <Widget>[
                              this._gotCurrentPosition == true
                                  ? SizedBox.shrink()
                                  : SizedBox(
                                      height: 30,
                                      width: 30,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.white),
                                      ),
                                    )
                            ],
                            leadings: <Widget>[
                              Text(
                                'Getting Location',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )
                    : DiscoverMore(),
                    
              ],
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
