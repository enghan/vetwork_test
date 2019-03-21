import 'package:flutter/material.dart';
import 'cancel_backButton.dart';
import 'drawer.dart';
import 'home.dart';
import 'setting.dart';

//class setting extends StatelessWidget {
//  BuildContext _context;
//
//  @override
//  Widget build(BuildContext context) {
//    _context = context;
//    return Scaffold(
//        resizeToAvoidBottomPadding: false,
//        appBar: AppBar(),
//        body: buildPageContainer());
//  }
//  TextEditingController Basecontroler = new TextEditingController();
//
//  Widget buildPageContainer() {
//    var lstView = ListView(
//      children: <Widget>[
//        buildHeaderActions(),
//        SizedBox(
//          height: 30.0,
//        ),
//        input_base_url(),
//        SizedBox(
//          height: 30.0,
//        ),
//        _myFunc(),
//      ],
//    );
//
//    var stack = Stack(
//      children: <Widget>[
//        Positioned(
//          child: Align(
//            alignment: FractionalOffset.topLeft,
//            child: lstView,
//          ),
//        ),
//
//      ],
//    );
//    var pageContainer = Container(
//      child: stack,
//    );
//    return Padding(
//      child: pageContainer,
//      padding: EdgeInsets.all(20.0),
//    );
//  }
//
//  Widget buildHeaderActions() {
//    var widget = cancel_backButton();
//    return widget;
//  }
//Widget input_base_url(){
//
//  return Column(children: <Widget>[
//
//  TextField(
//    controller: Basecontroler ,
//
//    decoration: InputDecoration(
//      labelText: "Base Address :" ,
//    ),
//
//    keyboardType: TextInputType.text,
//
//  )
//  ] );
//
//  }
//  void _changeText(String val) {
//    setState(() {
//      submitStr = val;
//    });
//    print("On RaisedButton : The text is $submitStr");
//  }
//
//}




class setting extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new ButtonOptions());

  }
}

class ButtonOptions extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new ButtonOptionsState();
  }
}
class ButtonOptionsState extends State<ButtonOptions> {

 final TextEditingController controller =TextEditingController();
  String str = "";
    String submitStr = "";
final formKey=GlobalKey<FormState>();

  void _changeText(String val) {
    setState(() {
      submitStr = val;
    });
    print("On RaisedButton : The text is $submitStr");
  }

  void _onSubmit(String val) {
    print("OnSubmit : The text is $val");
    setState(() {
      submitStr = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    void _onChanged(String value) {
      print('"OnChange : " $value');
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      key: formKey,
      drawer: builddrawer(),
      body: new Container(

        padding: const EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(
                hintText: "Type something...",
              ),
              onChanged: (String value) {
                _onChanged(value);
              },
              controller: controller,
              onSubmitted: (String submittedStr) {
                _onSubmit(submittedStr);
                controller.text = "";
              },
            ),

            new RaisedButton(
              child: new Text("Click me"),
              onPressed: () {
                _changeText(controller.text);
                // countT();
                controller.text = "";
                var form=formKey.currentState;
               if( form.validate()){
                 form.save();
               }

              },
            ),
            SizedBox(height: 30.0,),
            new Text('$submitStr'),
          ],
        ),
      ),
    );

  }
  Widget builddrawer() {
    return Drawer(

      child: ListView(

        padding: EdgeInsets.only(top: 30.0),
        children: <Widget>[

          ListTile(
            trailing: Icon(Icons.home),
            title: Text('Home'),

            onTap: () {
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => new home()));
            },
          ),
          ListTile(
            trailing: Icon(Icons.person),
            title: Text('My Profile'),
            onTap: () {

            },
          ),
          ListTile(
            trailing: Icon(Icons.pets),
            title: Text('My Pets'),
            onTap: () {

            },
          ),
          ListTile(
            trailing: Icon(Icons.history),
            title: Text('History'),
            onTap: () {

            },
          ),
          ListTile(
            trailing: Icon(Icons.local_offer),
            title: Text('Offers'),
            onTap: () {

            },
          ),
          ListTile(
            trailing: Icon(Icons.room_service),
            title: Text('Request service'),
            onTap: () {

            },
          ),
          Divider(color: Colors.black38),
          ListTile(
            trailing: Icon(Icons.list),
            title: Text('Terms and Condition'),
            onTap: () {

            },
          ),
          ListTile(
            trailing: Icon(Icons.help),
            title: Text('Help'),
            onTap: () {

            },
          ),
          ListTile(
            trailing: Icon(Icons.message),
            title: Text('Contact Us'),
            onTap: () {

            },
          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.message),
            title: Text('setting'),
            onTap: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
        ],
      ),

    );
  }}