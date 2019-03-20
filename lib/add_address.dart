
import 'package:flutter/material.dart';
import 'UI/folder_style/AppStyles.dart';
import 'UI/folder_style/ui_constants.dart';
import 'cancel_backButton.dart';
import 'Next_button.dart';
import'package:flutter_verification_code_input/flutter_verification_code_input.dart';
import 'dart:async';
class add_address extends StatelessWidget {
  final Widget child;

  add_address({Key key, this.child}) : super(key: key);
  BuildContext _context;
  bool Visit_check = false;
  bool priority_check = false;
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    _context = context;
    // TODO: implement build
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
        build_request_informaiton(),
        SizedBox(
          height: 20.0,
        ),
        build_name_input(),
        SizedBox(
          height: 5.0,
        ),
        build_phone_input(),
        SizedBox(
          height: 20.0,
        ),
        build_check("Schedual Visit", Visit_check),
        build_check("Priority Service", priority_check),
        SizedBox(
          height: 20.0,
        ),

        build_location(),
        SizedBox(
          height: 20.0,
        ),test(),
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

  Widget build_request_informaiton() {
    return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Request Information',
                style: textStyleH3,
              ),
              Padding(
                padding: EdgeInsets.only(top: top_padding),
                child: Text(
                  "finish your request by adding the information displayed now ",
                  style: textStyleH5,
                ),
              )
            ]));
  }

  Widget build_name_input() {
    return SingleChildScrollView(child: Container(

      child: TextField(
        decoration: InputDecoration(
          labelText: "NAME :",
          hintText: "Owner's name",
          hintStyle: TextStyle(color: Colors.black),
        ),
        keyboardType: TextInputType.text,
      ),

    )
    );
  }

  Widget build_phone_input() {
    return Container(

      child:
      TextField(
        decoration: InputDecoration(
          hintText: "xxxxxxxx",
          labelText: "phone :",
          prefix: Text("+20 ", style: textStyleH2,),
          suffix: build_iconcard(Icons.verified_user, "Verify", () =>
          showPopUp()),
        ),
        keyboardType: TextInputType.number,
      ),);
  }

  Widget build_iconcard(IconData myicon, String name,
      VoidCallback onCustomerAction) {
    var card = Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {
            onCustomerAction();
          },
          child: Padding(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "$name",
                    style: textStyleH4a,
                  ),
                  Icon(
                    myicon,
                    size: 16.0,
                  ),
                ]),
            padding: EdgeInsets.all(page_padding),
          ),
        ));
    return SizedBox(width: 81.0, height: 40.0, child: card);
  }

  Widget build_location() {
    var widget = Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Choose Location'),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Icon(Icons.location_on,size: 30.0,),
                Text("Set Your Location for faster access next visist")
              ],
            )
          ],
        ));
    return widget;
  }

  Widget buildNext() {
    return Next_button(() => Navigator.pushNamed(_context, "/Payment_service"));
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

  showPopUp() {
    showDialog(context: _context, builder: (c) {
      return showVerificationDialoge();
    });
  }
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)

        selectedDate = picked;
print(selectedDate);
  }
Widget test(){
    return RaisedButton(
      onPressed: () => _selectDate(_context),
      child: Text('Select date',),

    );
}
  Widget showVerificationDialoge() {
    return
      VerificationCodeInput(
      keyboardType: TextInputType.number,
      length: 4,
      onCompleted: (String value) {
        print(value);
      },
    );
  }
}