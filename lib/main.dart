import 'package:flutter/material.dart';
import 'home.dart';
import 'mainInterface.dart';
void main() => runApp(
    MaterialApp(

        home :  mainInterface(),
routes: {

  '/mainInterface': (context) => mainInterface(),

  '/home': (context) => home(),
} ,
)
    );


