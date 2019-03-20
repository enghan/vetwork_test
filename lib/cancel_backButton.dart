
import 'package:flutter/material.dart';

import 'UI/folder_style/ui_constants.dart';
class cancel_backButton extends StatelessWidget {
  final Widget child;

  cancel_backButton({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widget = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildButtonWithIcon(
              Icons.arrow_back, "Back", () => Navigator.pop(context)),
          buildButtonWithIcon(
              Icons.clear,
              "Cancel",
                  () => Navigator.pushNamedAndRemoveUntil(
                  context, "/home", (Route<dynamic> route) => false)),
        ],
      ),
    );
    return widget;
  }

  Widget buildButtonWithIcon(
      IconData icon, String text, VoidCallback onCustomerAction) {
    var widget = RaisedButton(
      onPressed: onCustomerAction,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      elevation: 4.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(icon),
          Text(
            text,

          )],
      ),
    );
    return SizedBox(
      width: width_crad_cancelandback,
      height: height_crad_cancelandback,
      child: widget,
    );
  }
}
