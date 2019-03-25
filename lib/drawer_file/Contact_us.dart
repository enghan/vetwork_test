import 'package:flutter/material.dart';
import 'package:vetwork_test/Model/exist_address.dart';
import 'package:vetwork_test/UI/Send_Button.dart';
import 'package:vetwork_test/UI/folder_style/ui_constants.dart';
import 'package:vetwork_test/UI/folder_style/AppStyles.dart';
import 'package:vetwork_test/UI/skip_save_button.dart';
class Contact_us extends StatelessWidget {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    // TODO: implement build
    return Scaffold(


        resizeToAvoidBottomPadding: false,
        body: buildPageContainer()
    );
  }

  Widget buildPageContainer() {
    var lstView = ListView(
      children: <Widget>[
        build_header(),
        SizedBox(height: 10.0,),
        build_card_header(),
        SizedBox(height: 10.0,),
        build_name_input("NAME","Michael Kors"),
        SizedBox(height: 10.0,),
        build_phone_input("phone","1226162163"),
        SizedBox(height: 10.0,),
        build_name_input("EMAIL","Mikors@gmail.com"),
        SizedBox(
          height: 10.0,
        ), build_name_input("MESSAGE","how can we help you ?"),

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

            alignment: FractionalOffset.bottomCenter,
            child: buildSend(),
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

  Widget buildSend() {
    return Send_Button(() => Navigator.pushNamed(_context, "/Rating"));
  }
  Widget build_header() {
    return Row(children: <Widget>[
      IconButton(icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pushNamed(_context, '/drawer'),),
      SizedBox(width: 5.0,),
      Icon(Icons.email),
      SizedBox(width: 5.0,),
      Text("Contact Us")
    ],);
  }
  Widget build_card_header() {
    return Container(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hello',
                style: welcometextStyle,
              ),
              Padding(
                padding: EdgeInsets.only(top: top_padding),
                child: Text(
                  "Drop us a message and we will call you as soon as possible to answer you queries of complains .",
                  style: textStyleH6,
                ),
              )
            ]));
  }
}
Widget build_phone_input(String label,String hint ) {
  return SingleChildScrollView(child:
  Column(

    children: <Widget>[TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        prefix: Text("+20 ", style: textStyleH2,),


      ),
      keyboardType: TextInputType.number,
    ),],
  ));
}
Widget build_name_input(String label,String hint) {
  return SingleChildScrollView(
      child: Column(

        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: label,
              hintText: hint,
              hintStyle: TextStyle(color: Colors.black),
            ),
            keyboardType: TextInputType.text,
          ),
        ],

      )
  );
}
