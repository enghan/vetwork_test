import 'package:flutter/material.dart';
import 'home.dart';
import 'drawer.dart';
import 'pet_profile.dart';
import 'request_information.dart';
import 'add_address.dart';
class routes_class {


final routes = {
  home: drawer(),
    '/drawer': (context) => drawer(),
    '/home': (context) => home(),
    '/pet_profile': (context) => pet_profile(),
    '/request_information': (context) => request_information(),
    '/add_address' : (context) => add_address(),
  };
}
//build(){
//  buildAppContainer();
//}
//
//buildAppContainer(){
//  buildWelcomeText(),
//  buildPidType(),
//  buildServiceType(),
//  buildServices(),
//}
//Widget buildWelcomeText(){
//  return Container(child:X);
///}
//Concernning UI
//1- Create Folder UI
//2- inside UI Folder create anothr folder styles
//3-create file named colors.dart
////inside this file add your colors like
////mport 'package:flutter/material.dart';
////
////const clrOrange = Colors.amber;
////const clrOrangeDeep = Colors.orangeAccent;
////const  clrBlack = Colors.black;
////const  clrRed = Colors.red;
////const  clrwhite = Colors.white;
////const  clrLightGray = Colors.grey;
//4-create another file named ui_constants.dart
//const double page_margin = 20.0;
//const double page_padding = 10.0
//5-craete another file names : AppStyles.dart
//import 'package:flutter/material.dart';
//import 'package:pit/ui/theme/colors.dart';
//
//
//TextStyle welcometextStyle = const TextStyle(
//    color: clrBlack, fontSize:40.0, fontWeight: FontWeight.bold);
//
//TextStyle textStyleH2 = const TextStyle(
//    color: clrBlack, fontSize:20.0, fontWeight: FontWeight.bold);
//
//TextStyle textStyleH3 = const TextStyle(
//    color: clrBlack, fontSize:15.0, fontWeight: FontWeight.bold);
//
//TextStyle textStyleH4 = const TextStyle(
//    color: clrLightGray, fontSize:15.0, fontWeight: FontWeight.bold);
//
//
//TextStyle btnTextStyle = const TextStyle(
//    color: clrBlack, fontSize:15.0, fontWeight: FontWeight.bold);
//
//TextStyle textStyleMedium = const TextStyle(
//    color: clrOrange, fontSize:15.0, fontWeight: FontWeight.bold);
//
//TextStyle textNotificationStyle = const TextStyle(
//    color: clrOrange, fontSize:20.0, fontWeight: FontWeight.bold);
//
//TextStyle textSmallStyle = const TextStyle(
//    color: clrBlack, fontSize: 20.0, fontWeight: FontWeight.normal);
//
//TextStyle textPrice = const TextStyle(
//    color: clrOrange, fontSize: 20.0, fontWeight: FontWeight.bold);
//
//TextStyle textHeaderStyle = const TextStyle(
//    color: clrBlack,fontSize: 20.0, fontWeight: FontWeight.normal);
//
//TextStyle hintStyle = new TextStyle(
//  color: clrOrange,
//);
//
//
//
//ThemeData appTheme = new ThemeData(
//  hintColor: clrOrange,
//  primaryColor: clrBlack,
//  accentColor: clrOrangeDeep,
//  primarySwatch: clrOrange,
//  scaffoldBackgroundColor: Colors.black,
//  // Define the default Font Family
//  fontFamily: 'Montserrat',
//  primaryTextTheme: Typography(platform: TargetPlatform.android).black,
//  textTheme: Typography(platform: TargetPlatform.android).black,
//  textSelectionColor: clrOrange,
//);
//
//
//
//TextStyle buttonTextStyle = const TextStyle(
//    color: Colors.black,
//    fontSize: 14.0,
//    fontFamily: "Roboto",
//    fontWeight: FontWeight.bold);

//6- foir building repeated code :
//6.1 create methood buildGestureDetector(){}
//then call the fucntion twice
//in case of some difference that means we need to pass some params to the function
//buildGestureDetector(Icon icon,Text text){}
//backgroundImage: AssetImage("assets/dog.jpg"),
//String imageName
//7- Don't use new Ketyword
//class Ped {
//  String name;
//  String phone;
//  String location;
//}
//class Service{
//  String name;
//  double Price;
//
//}
//buildListof ServiceWidget(){}
//ListView.builder(itemCount=0,itemBuilder:(c,index{
//
//
//\}));
//List<Service> list = {}