import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vetwork_test/Model/Check_Versions.dart';
import 'package:http/http.dart' as http;
import 'UI/folder_style/AppStyles.dart';
import 'Next_button.dart';
import 'cancel_backButton.dart';
import 'network/network_functions.dart';
import 'package:shared_preferences/shared_preferences.dart';
class set_language extends StatelessWidget {

  BuildContext _context;



  bool Visit_check = false;
  bool priority_check = false;
  bool selected = false;
  String response ;
var _lbl;
var _lng;
  final Future<Check_Versions> check;

   set_language({Key key, this.check}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _context = context;

    return Scaffold(
        resizeToAvoidBottomPadding: false,

        body: buildPageContainer());
  }


  Widget buildPageContainer() {
    var lstView = ListView(
      children: <Widget>[
        buildHeaderActions(),
        SizedBox(
          height: 20.0,
        ),

        build_payment_statement(),
        SizedBox(
          height: 5.0,
        ),
        build_check("arabic", Visit_check),
        build_check("english", priority_check),
        SizedBox(
          height: 20.0,
        ),
        data(),
      ],
    );

    var stack = Stack(
      children: <Widget>[
        Positioned(
          child: Align(
            alignment: FractionalOffset.topLeft,
            child: lstView,
          ),
        ),
        Positioned(
          child: Align(
            child: buildNext(),
            alignment: FractionalOffset.bottomCenter,
          ),
        ),
      ],
    );
    var pageContainer = Container(
      child: stack,
    );
    return Padding(
      child: pageContainer,
      padding: EdgeInsets.all(20.0),
    );
  }

  Widget buildHeaderActions() {
    var widget = cancel_backButton();
    return widget;
  }

  Widget build_check(String title, bool boolValue) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Checkbox(
            value: boolValue,
            onChanged: (bool value) {},
          ),
          Text(title),
        ],
      ),
    );
  }
  Widget buildNext() {
    return Next_button(() => Navigator.pushNamed(_context, "/drawer"));
  }}
Future<Check_Versions> checkversion() async {

  final _response =
  await http.get('http://us-central1-vetpet-bd573.cloudfunctions.net/pet/app/checkversion');

  if (_response.statusCode == 200) {
    print(json.decode(_response.body));
    return Check_Versions.fromJson(json.decode(_response.body));

  } else {
    throw Exception('Failed -');
  }

}
Widget data(){
  return Center(
    child: FutureBuilder<Check_Versions>(
      future: checkversion(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {


          return Text(snapshot.data.lblVersion.toString());
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        void sae(){
          var  lng=snapshot.data.langVersion.toString();
          var  _lbl=snapshot.data.langVersion.toString();

          savepreference(lng).then((bool comitted){
            Navigator.pushNamed(context, '/drawer');
          });
        }

        return CircularProgressIndicator();
      },
    ),
  );
}

Future<bool> savepreference(String name) async{

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String _lng;
  String _lbl;
  prefs.setString("lng version", _lng);
  prefs.setString("lbl version", _lbl);
}
Future<String> getpreference(String name) async{

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String lng=   prefs.getString("lng version");
  prefs.getString("lbl version");
  return lng;
}

Widget build_payment_statement() {

  return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text("language :",style: textStyleH2,)

          ]));}

