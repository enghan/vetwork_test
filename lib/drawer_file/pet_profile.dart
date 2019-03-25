import 'package:flutter/material.dart';
import 'package:vetwork_test/UI/folder_style/ui_constants.dart';
import 'package:vetwork_test/UI/folder_style/AppStyles.dart';
import 'home.dart';
import 'package:vetwork_test/UI/Next_button.dart';
import 'package:vetwork_test/UI/cancel_backButton.dart';

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
                body: buildPageContainer())));
  }

  var _radioValue1;
  var _radioValue2;
  var _radioValue3;
  var _radioValue4;
  Widget buildPageContainer() {
    var lstView = ListView(
      children: <Widget>[
        build_card_header(),
        SizedBox(
          height: 10.0,
        ),
        build_Text_header(),
        SizedBox(
          height: 10.0,
        ),
        pet_image(),
        SizedBox(
          height: 8.0,
        ),
        build_name_input("Name * ", "Baxter"),
        SizedBox(
          height: 12.0,
        ),
        buildradio("SPECIES *","Dog","Cat","Other",_radioValue1),
        SizedBox(
          height: 5.0,
        ),
        build_name_input("Size * ", "small"),
        SizedBox(
          height: 5.0,
        ),
        build_name_input("BREED * ", "Baxter"),
        SizedBox(
          height: 12.0,
        ),

        buildradio_2("GENDER *","Male","Female",_radioValue2),
        SizedBox(
          height:5.0,
        ),
        buildradio_2("IS YOU PET NEUTERED ","YES","NO",_radioValue3),
        SizedBox(
          height:5.0,
        ),
        buildradio_2(" IS YOU PET INSURED","YES","NO",_radioValue4),
        SizedBox(
          height:5.0,
        ),
        build_icon_input("DATE OF BRAITH", "19-nov-2016"),
        SizedBox(
          height: 5.0,
        ),
        build_name_input("BEHAVIOUR ", "Calm , Obeys orders"),
        SizedBox(
          height: 5.0,
        ),
        build_icon_input("LAST VACCINATION DATE", "19-nov-2016"),
        SizedBox(
          height: 5.0,
        ),
        build_icon_input("LAST VACCINATION DATE", "19-nov-2016"),
       SizedBox(
          height: 5.0,
        ),

        build_name_input("DESCRIBTION  ",
            "Brief description of your pets medical history and any past or present mediacation(including any alleregic reactions to medication) "),

        SizedBox(
          height: 50.0,
        ),

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

  Widget build_Text_header() {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Text(
            'Save your pet',
            style: textStyleH2,
          ),
          Padding(
            padding: EdgeInsets.only(top: top_padding),
            child: Text(
              "Save your pet to your account for easier slection next time . fields with * mandatory ",
              style: textStyleH6,
            ),
          )
        ]));
  }

  Widget buildNext() {
    return Next_button(() => Navigator.pushNamed(_context, "/home"));
  }

  Widget buildHeaderActions() {
    var widget = cancel_backButton();
    return widget;
  }

  Widget pet_image() {
    return CircleAvatar(
      backgroundColor: Colors.brown.shade800,
      child: Text('AH'),
    );
  }

  Widget build_name_input(String label, String hint) {
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
    ));
  }


  Widget build_icon_input(String label, String hint) {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            labelText: label,
            suffix: Icon(Icons.calendar_today),
          ),
          keyboardType: TextInputType.number,
        ),
      ],
    ));
  }

  Widget buildradio_2(String text,
      String text1, String text2, var _radioValue1) {
    return  Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: <Widget>[
          Text(text),


          Row(
            children: <Widget>[
              Radio(
                value: 0,
                groupValue: _radioValue1,
              ),
              Text(
                text1,
              ),
              Radio(
                value: 1,
                groupValue: _radioValue1,
              ),
              Text(
                text2,
              ),

            ],
          )]);
  }
  Widget buildradio(String text,
      String text1, String text2, String text3, var _radioValue1) {
    return  Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: <Widget>[
        Text(text),


         Row(
          children: <Widget>[
            Radio(
              value: 0,
              groupValue: _radioValue1,
            ),
            Text(
              text1,
            ),
            Radio(
              value: 1,
              groupValue: _radioValue1,
            ),
            Text(
              text2,
            ),
            Radio(
              value: 2,
              groupValue: _radioValue1,
            ),
            Text(
              text3,
            ),
          ],
         )]);
  }

  Widget build_card_header() {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pushNamed(_context, '/drawer'),
        ),
        SizedBox(
          width: 5.0,
        ),
        Icon(Icons.pets),
        SizedBox(
          width: 5.0,
        ),
        Text("MY Pets")
      ],
    );
  }

}
