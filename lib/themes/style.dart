import 'package:flutter/material.dart';

TextStyle textStyle = const TextStyle(
    color: const Color.fromRGBO(35, 92, 254, 10.0),
    fontWeight: FontWeight.normal);
//
TextStyle textStyleBold = const TextStyle(
    color: const Color.fromRGBO(35, 92, 254, 10.0),
    fontWeight: FontWeight.bold);

TextStyle textStylew500 = const TextStyle(
    color: const Color.fromRGBO(35, 92, 254, 10.0),
    fontWeight: FontWeight.w500);

TextStyle textStyle12Bold = const TextStyle(
    color: const Color.fromRGBO(68, 68, 68, 1.0), fontSize: 15.0);

TextStyle textStyle10Bold = const TextStyle(
    color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.bold);
TextStyle textStyle10normal = const TextStyle(
    color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.normal);
ThemeData appTheme = new ThemeData(
  primaryColor: new Color.fromRGBO(251, 99, 15, 1.0),
  primaryTextTheme: new TextTheme(
    display1: new TextStyle(
      color: new Color.fromRGBO(68, 68, 68, 1.0),
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ),
    display2: new TextStyle(
      color: new Color.fromRGBO(153, 153, 153, 1.0),
      fontSize: 11.0,
      fontWeight: FontWeight.w100,
    ),
    display3: new TextStyle(
      color: new Color.fromRGBO(153, 153, 153, 1.0),
      fontSize: 10.0,
      fontWeight: FontWeight.bold,
    ),
    display4: new TextStyle(
      color: new Color.fromRGBO(153, 153, 153, 1.0),
      fontSize: 11.0,
      fontWeight: FontWeight.w400,
    ),
  ),
  iconTheme: new IconThemeData(
    color: const Color.fromRGBO(251, 99, 15, 10.0),
  ),
  primaryColorBrightness: Brightness.light,
  secondaryHeaderColor: new Color.fromRGBO(252, 208, 184, 10.0),
  backgroundColor: Colors.grey[200],
//    backgroundColor: transparentColor,
//  indicatorColor: Colors.white,
//  accentColorBrightness: Brightness.light,
//    accentColor: whiteColor
);

//Color textFieldColor = const Color.fromRGBO(255, 255, 255, 0.1);
//const Color whiteColor = const Color(0XFFFFFFFF);
//const Color primaryColor = const Color(0xFF00c497);
//
////TextStyle textStyleSmall = const TextStyle(
////    color: const Color.fromRGBO(255, 255, 255, 0.8),
////    fontSize: 12.0,
////    fontFamily: "Roboto",
////    fontWeight: FontWeight.bold);
//
////Image miniLogo = new Image(
////    image: new ExactAssetImage("assets/header-logo.png"),
////    height: 28.0,
////    width: 20.0,
////    alignment: FractionalOffset.center);
//
//TextStyle headingStyle = new TextStyle(
//  color: Colors.white,
//  fontSize: 22.0,
//  fontWeight: FontWeight.bold,
//);
//
//const Color transparentColor = const Color.fromRGBO(0, 0, 0, 0.2);
