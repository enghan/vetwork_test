import 'package:flutter/material.dart';
import 'colors.dart';


TextStyle welcometextStyle = const TextStyle(
    color: clrBlack, fontSize:30.0, fontWeight: FontWeight.bold);

TextStyle textStyleH2 = const TextStyle(
    color: clrBlack, fontSize:17.0, fontWeight: FontWeight.bold);

TextStyle textStyleH3 = const TextStyle(
    color: clrBlack, fontSize:15.0, fontWeight: FontWeight.bold);

TextStyle textStyleH4 = const TextStyle(
    color: clrLightGray, fontSize:12.0, fontWeight: FontWeight.bold);
TextStyle textStyleH5 = const TextStyle(
    color: clrLightGray, fontSize:18.0, );
TextStyle textStyleH6 = const TextStyle(
  color: clrLightGray, fontSize:15.0, );
TextStyle textStyleH4a = const TextStyle(
    color: clrBlack, fontSize:12.0, fontWeight: FontWeight.bold);

TextStyle btnTextStyle = const TextStyle(
    color: clrBlack, fontSize:15.0, fontWeight: FontWeight.bold);

TextStyle textStyleMedium = const TextStyle(
    color: clrOrange, fontSize:15.0, fontWeight: FontWeight.bold);

TextStyle textNotificationStyle = const TextStyle(
    color: clrOrange, fontSize:20.0, fontWeight: FontWeight.bold);

TextStyle textSmallStyle = const TextStyle(
    color: clrBlack, fontSize: 20.0, fontWeight: FontWeight.normal);

TextStyle textPrice = const TextStyle(
    color: clrOrange, fontSize: 20.0, fontWeight: FontWeight.bold);
TextStyle textStyle = const TextStyle(
    color: clrblue,fontSize: 16.0, fontWeight: FontWeight.normal);

TextStyle textHeaderStyle = const TextStyle(
    color: clrBlack,fontSize: 20.0, fontWeight: FontWeight.normal);

TextStyle hintStyle = new TextStyle(
  color: clrOrange,
);



ThemeData appTheme = new ThemeData(
  hintColor: clrOrange,
  primaryColor: clrBlack,
  accentColor: clrOrangeDeep,
  primarySwatch: clrOrange,
  scaffoldBackgroundColor: Colors.black,
  // Define the default Font Family
  fontFamily: 'Montserrat',
  primaryTextTheme: Typography(platform: TargetPlatform.android).black,
  textTheme: Typography(platform: TargetPlatform.android).black,
  textSelectionColor: clrOrange,
);



TextStyle buttonTextStyle = const TextStyle(
    color: Colors.black,
    fontSize: 14.0,
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold);
