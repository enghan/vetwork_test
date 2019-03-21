import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vetwork_test/Model/Check_Versions.dart';
import 'package:http/http.dart' as http;
import 'UI/folder_style/AppStyles.dart';
import 'Next_button.dart';
import 'cancel_backButton.dart';
import 'network/network_functions.dart';
import 'Model/Get_Labels.dart';
import 'package:shared_preferences/shared_preferences.dart';
class set_language extends StatelessWidget {

  BuildContext _context;






  bool Visit_check = false;
  bool priority_check = false;
  bool selected = false;
  String response ;

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

       data_Get_Label(),
        data_check_version(),
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

network_functions  x =network_functions();

Widget data_check_version(){
  return Center(
    child: FutureBuilder<Check_Versions>(
      future: x.checkversion(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {


          return Text(snapshot.data.lblVersion.toString());
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        void save(){
          var  _lbl=snapshot.data.lblVersion.toString();

          savepreference(_lbl).then((bool comitted){
            Navigator.pushNamed(context, '/drawer');
          });
        }

        return CircularProgressIndicator();
      },
    ),
  );
}
Widget data_Get_Label(){
  return Center(
    child: FutureBuilder<Get_Labels>(
      future: x.GetLabels().then((v){

      }).catchError((e){
      }),

      builder: (context, snapshot) {
        if (snapshot.hasData) {


          return Text(snapshot.data.version.toString());
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        void save(){
          var  _lbl=snapshot.data.version.toString();

          savepreference(_lbl).then((bool comitted){
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

  prefs.setString("lbl version", name);
  prefs.commit();
}
Future<String> getpreference(String name) async{

  SharedPreferences prefs = await SharedPreferences.getInstance();
  String lbl=   prefs.getString("lbl version");
  if(lbl !=null){
    network_functions  x =network_functions();
    x.GetLabels().then((v){

    }).catchError((e){
  });}
  prefs.getString("lbl version");
  return lbl;
}

Widget build_payment_statement() {

  return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Text("language :",style: textStyleH2,)

          ]));}

