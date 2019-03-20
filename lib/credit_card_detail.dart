import 'package:flutter/material.dart';
import 'UI/folder_style/AppStyles.dart';
import 'UI/folder_style/ui_constants.dart';
import 'cancel_backButton.dart';
import 'Next_button.dart';
import 'Contact_with_dr.dart';
class credit_card_detail extends StatelessWidget {
  final Widget child;
  List<String> _Month= <String>['January', 'February', 'March', 'April', 'May','June','July','August','September','October','November','December'];
  List<String> _Year= <String>['2019','2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030',];

  bool _check = false;
  credit_card_detail({Key key, this.child}) : super(key: key);
  BuildContext _context;

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
        build_card_header(),
        SizedBox(
          height: 20.0,
        ),
        build_Card_number(),
        SizedBox(
          height: 10.0,
        ),

        build_row_namecvc(),
        SizedBox(height: 40.0,),
        build_row_combo_box(),
        SizedBox(height: 40.0,),
        build_check("Set as adefault payment", _check),
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
                'Crad details',
                style: textStyleH3,
              ),
              Padding(
                padding: EdgeInsets.only(top: top_padding),
                child: Text(
                  "Add your card details . You will be prompt agin to confirm payment ",
                  style: textStyleH5,
                ),
              )
            ]));
  }
  Widget buildNext() {
    return Next_button(() => Navigator.pushNamed(_context, "/Contact_with_dr"));
  }
Widget build_name_Card(){
 Widget field=
    TextField(
      decoration: InputDecoration(
        labelText: "NAME ON THE CARD :" , hintText: "OChandlar M.Bing." ,hintStyle: TextStyle(color: Colors.black),
      ),
      keyboardType: TextInputType.text,

  );
 return SizedBox(width: 230.0,height:40.0,child: field,);
}
Widget build_Card_number(){

  return
    TextField(
      decoration: InputDecoration(
        hintText: "1111 2222 3333 9999",labelText: "CARD NUMBER :" ,
        ),
      keyboardType: TextInputType.number,
    );}
  Widget build_CVC_number(){

   Widget field=
        TextField(
  decoration: InputDecoration(
  labelText: "CVC :" , hintText: "123" ,hintStyle: TextStyle(color: Colors.black),
  ),
  keyboardType: TextInputType.number,
        );
  return SizedBox(width: 50.0,height:40.0,child: field,);}
 Widget build_row_namecvc(){
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: <Widget>[
       build_name_Card(),
       Flexible(child:build_CVC_number()),

     ],
   );
  }


  Widget buildHeaderActions() {
    var widget = cancel_backButton();
    return widget;
  }
  Widget build_compobox(List<String> list){
    return DropdownButton(
      value: "November",
      isDense: true,
      onChanged: (String newValue) {

      },
      items: list.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );


  }
  Widget build_row_combo_box(){
    return Column(
    mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("EXPIRY DATA",style: textStyle,),
        SizedBox(height: 20.0,),
        Row(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

          build_compobox(_Month),
          SizedBox(width: 40.0,),
          build_compobox(_Month),
      //Container(child: build_compobox(_Year)),
        ],)


      ],
    );
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

}