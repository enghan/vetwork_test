import 'package:flutter/material.dart';
import 'folder_style/ui_constants.dart';

class skip_save_button extends StatelessWidget {
  VoidCallback onCustomButtonPressed;
  VoidCallback onCustomButtonPressed2;
  skip_save_button  (this.onCustomButtonPressed,this.onCustomButtonPressed2);

  @override
  Widget build(BuildContext context) {
    var widget = Container(
        child: RaisedButton(
          color: Colors.white,
          disabledColor: Colors.grey,
          highlightColor: Colors.blue,
          child: Text(
            'Skip',

          ),
          onPressed: onCustomButtonPressed,
        ));
    var widgett = Container(
        child: RaisedButton(

          color: Colors.white,
          disabledColor: Colors.grey,
          highlightColor: Colors.blue,
          child: Text(
            'Save',

          ),
          onPressed: onCustomButtonPressed2,
        ));
    var widgetColum=Container(
        child: Column(
      children: <Widget>[
        widget,
        widgett,
      ],
    ));
    return SizedBox(
      width: double.infinity,
      height:100.0,
      child: widgetColum
    );
  }
}