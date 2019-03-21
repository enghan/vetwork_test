import 'package:flutter/material.dart';
import 'drawer.dart';
import 'home.dart';
import 'Payment_service.dart';
import 'pet_profile.dart';
import 'request_information.dart';
import 'add_address.dart';
import 'credit_card_detail.dart';
import 'Contact_with_dr.dart';
import 'Rating.dart';
import 'setting.dart';
import 'set_language.dart';

void main() => runApp(MaterialApp(
      home: set_language(),
    routes : {
  '/drawer': (context) => drawer(),
  '/home': (context) => home(),
  '/pet_profile': (context) => pet_profile(),
  '/request_information': (context) => request_information(),
  '/add_address' : (context) => add_address(),
      '/Payment_service': (context) => Payment_service(),
      '/credit_card_detail' :(context) => credit_card_detail(),
      '/Contact_with_dr' :(context) => Contact_with_dr(),
      '/Rating':(context) =>Rating(),
      '/setting':(context) =>setting(),


},
    ));
