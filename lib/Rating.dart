import 'package:flutter/material.dart';
import 'UI/folder_style/ui_constants.dart';
import 'UI/folder_style/ui_constants.dart';
import 'UI/folder_style/AppStyles.dart';
import 'package:vetwork_test/UI/Next_button.dart';
import 'package:vetwork_test/UI/cancel_backButton.dart';
class Rating extends StatelessWidget{
  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context =context;
    return  Scaffold(
        resizeToAvoidBottomPadding: false,

        body: buildPageContainer()
    );
  }
  int _rating = 0;
  Widget buildPageContainer() {
    var lstView = ListView(

      children: <Widget>[

        buildHeaderActions(),
        SizedBox(
          height: 20.0,
        ),
        buildheaderText(),

        SizedBox(
          height: 10.0,
        ),
        build_rating_Row("Punctuality"),

        SizedBox(
          height: 10.0,
        ),
        build_rating_Row("Informative and able to provide answers"),
        SizedBox(
          height: 10.0,
        ),
        build_rating_Row("Easy to use"),
        SizedBox(
          height: 10.0,
        ),
        build_rating_Row("Would recommend to a friend"),
        SizedBox(
          height: 10.0,
        ),
        build_rating_Row("Would use the application again"),
        SizedBox(
          height: 10.0,
        ),
        Rate_on_app_store(),
        SizedBox(
          height: 10.0,
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
            child: build_skip(),
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
  Widget buildNext() {
    return Next_button(() => Navigator.pushNamed(_context, "/add_address"));
  }
  Widget buildHeaderActions() {
    var widget = cancel_backButton();
    return widget;
  }
  Widget buildheaderText(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
     Text("Thank you for using Vetwork",style: textStyleH2,),
Text("please rate the service provided" ,style: textStyleH4,)
    ],
      );

  }
Widget build_rating_Row(String text){

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(text,style: textStyleH4,),
        building_Rating(),
      ],
    );
}
Widget building_Rating(){
  List<Widget> array = [];
  var filled = Colors.amber;
  var empty = Colors.grey;
  for (var i = 1; i <= 5; i++) {
    array.add(IconButton(
      icon: Icon(Icons.star),
      color: (_rating < i ? empty : filled),
      onPressed: () {

          _rating = i;

      },
    ));
  }
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: array,

  );
}
  Widget Rate_on_app_store(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Rate us on app Stoe",style: textStyleH3,),
     SizedBox(height: 5.0,),
     Container(
       width: double.infinity,
       height:heiht_next_button,

    child:  RaisedButton(
      elevation: 5.0,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
    ),
    child:  Text(
    'Submit',
    style:  TextStyle(
    color: Colors.white
    ),
    ),
    onPressed: () => null,
    color: Colors.blue,
    ),
     ) ],
    );

  }
  Widget build_skip(){
    var widget = Container(
        child: RaisedButton(
          color: Colors.transparent,
          disabledColor: Colors.transparent,
          highlightColor: Colors.blue,

          child: Text(
            'Skip' ,style: textStyleH3,

          ),

        ));
    return SizedBox(
      width: double.infinity,
      child: widget,
      height:heiht_next_button,
    );
  }

}