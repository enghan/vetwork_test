import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:vetwork_test/drawer_file/home.dart';
import 'Payment_service.dart';
import 'package:vetwork_test/drawer_file/pet_profile.dart';
import 'request_information.dart';
import 'add_address.dart';
import 'credit_card_detail.dart';
import 'Contact_with_dr.dart';
import 'Rating.dart';
import 'setting.dart';
import 'package:vetwork_test/drawer_file/Contact_us.dart';
import 'package:vetwork_test/drawer_file/My_profile.dart';
import 'package:vetwork_test/drawer_file/my_pets.dart';
void main() => runApp(MaterialApp(
      home: drawer(),
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
      '/MY_profile':(context) =>MY_profile(),
      '/my_pets':(context) =>my_pets(),
      'Contact_us':(context) =>Contact_us(),

},
    ));
