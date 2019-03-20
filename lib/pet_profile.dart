import 'package:flutter/material.dart';
import 'home.dart';
import 'UI/folder_style/ui_constants.dart';
import 'UI/folder_style/AppStyles.dart';
import 'Next_button.dart';
import 'cancel_backButton.dart';
class pet_profile extends StatelessWidget {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {

    _context = context;
    // TODO: implement build
    return MaterialApp(

        home: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/dog.png"), fit: BoxFit.cover)),
    child: Scaffold(
    resizeToAvoidBottomPadding: false,
        body:  buildPageContainer()))
    );}

  Widget buildPageContainer() {
    var lstView = ListView(
      children: <Widget>[
        buildHeaderActions(),
        SizedBox(
          height: 20.0,
        ),
        build_card_header(),
        SizedBox(
          height: 20.0,
        ),
        pet_image(),
        SizedBox(
          height: 10.0,
        ),
        build_name_input("Name * ","Baxter"),
        SizedBox(
          height: 10.0,
        ),
        build_name_input("Size * ","small"),
        SizedBox(
          height: 10.0,
        ),
        build_name_input("BREED * ","Baxter"),
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
  Widget build_card_header() {
    return Container(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Save your pet',
                style: textStyleH3,
              ),
              Padding(
                padding: EdgeInsets.only(top: top_padding),
                child: Text(
                  "Save your pet to your account for easier slection next time . fields with * mandatory ",
                  style: textStyleH5,
                ),
              )
            ]));
  }
  Widget buildNext() {
    return Next_button(() => Navigator.pushNamed(_context, "/Contact_with_dr"));
  }
  Widget buildHeaderActions() {
    var widget = cancel_backButton();
    return widget;
  }
  Widget pet_image(){

    return  CircleAvatar(
      backgroundColor: Colors.brown.shade800,
      child: Text('AH'),
    );

  }
  Widget build_name_input(String label,String hint) {
    return SingleChildScrollView(
        child: Container(

      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          hintStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.text,
      ),

    )
    );
  }

}
