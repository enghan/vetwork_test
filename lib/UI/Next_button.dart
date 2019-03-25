import 'package:flutter/material.dart';
import 'folder_style/ui_constants.dart';

class Next_button extends StatelessWidget {
  VoidCallback onCustomButtonPressed;

  Next_button(this.onCustomButtonPressed);

  @override
  Widget build(BuildContext context) {
    var widget = Container(
        child: RaisedButton(
          color: Colors.white,
          disabledColor: Colors.grey,
          highlightColor: Colors.blue,
          child: Text(
            'Next',

          ),
          onPressed: onCustomButtonPressed,
        ));
    return SizedBox(
      width: double.infinity,
      child: widget,
      height:heiht_next_button,
    );
  }
}