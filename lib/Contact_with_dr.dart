import 'package:flutter/material.dart';
import 'Model/service.dart';
import 'UI/folder_style/ui_constants.dart';
import 'UI/folder_style/AppStyles.dart';
import 'Next_button.dart';
import 'cancel_backButton.dart';
import 'Rating.dart';

class Contact_with_dr extends StatelessWidget {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context =context;
    // TODO: implement build

    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomPadding: false, body: buildPageContainer());
  }


  int _currentStep = 0;

  Widget buildPageContainer() {
    var lstView = ListView(
      children: <Widget>[
        buildHeaderActions(),
        SizedBox(
          height: 20.0,
        ),
        buildStepper(),
        SizedBox(
          height: 20.0,
        ),
        // build_name_input(),
        SizedBox(
          height: 5.0,
        ),
        // build_phone_input(),
        SizedBox(
          height: 20.0,
        ),
        // build_check("Schedual Visit", Visit_check),
        //build_check("Priority Service", priority_check),
        SizedBox(
          height: 20.0,
        ),
        // build_location(),
        SizedBox(
          height: 20.0,
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

  Widget buildHeaderActions() {
    var widget = cancel_backButton();
    return widget;
  }

  Widget buildNext() {
    return Next_button(() => Navigator.pushNamed(_context, "/Rating"));
  }

  Widget buildStepper() {
    return Container(
        child: Stepper(
      steps: _steps(),
      currentStep: _currentStep,
      onStepTapped: (index) {
        print('we are at the last step');
      },

        ));
  }

  List<Step> _steps() {
    List<Step> mySteps = [
      Step(
        title: Text('Step 1'),
        content: Text('Step 1 content'),
        isActive: _currentStep >= 0,
      ),
      Step(
          title: Text('Step 2'),
          content: Text('Step 2 content'),
          isActive: _currentStep >= 1),
      Step(
          title: Text('Step 3'),
          content: Text('Step 3 content'),
          isActive: _currentStep >= 2)
    ];
    return mySteps;
  }

  Widget build_Card(String text) {
    var card = Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: new InkWell(
          onTap: () {},
          child: Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                text,
                style: textStyleH4a,
              )),
        ));
    return SizedBox(width: 100.0, height: 100.0, child: card);
  }
}
