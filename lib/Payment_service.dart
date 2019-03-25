
import 'package:flutter/material.dart';
import 'Model/service.dart';
import 'UI/folder_style/ui_constants.dart';
import 'UI/folder_style/AppStyles.dart';
import 'package:vetwork_test/UI/Next_button.dart';
import 'package:vetwork_test/UI/cancel_backButton.dart';
import 'credit_card_detail.dart';
class Payment_service extends StatelessWidget {
  final Widget child;
  BuildContext _context;
  Payment_service({Key key, this.child}) : super(key: key);

  bool Visit_check = false;
  bool priority_check = false;
  bool selected = false;
  @override

  Widget build(BuildContext context) {
    _context = context;

    return Scaffold(
        resizeToAvoidBottomPadding: false,

        body: buildPageContainer());
  }

  List<Service> _tags_service = [
    Service(name: 'checkup', Price: 10.0),
    Service(name: 'Vaccine', Price: 30.0),
    Service(name: 'X/ray', Price: 30.0),
    Service(name: 'Deworming', Price: 30.0),
  ];
  Widget buildPageContainer() {
    var lstView = ListView(
      children: <Widget>[
        buildHeaderActions(),
        SizedBox(
          height: 20.0,
        ),
        build_header(),
        SizedBox(
          height: 20.0,
        ),
        build_service(_tags_service),
        SizedBox(
          height: 20.0,
        ),
        build_payment_statement(),
        SizedBox(
          height: 5.0,
        ),
        build_check("Cash", Visit_check),
        build_check("Credit card", priority_check),
        SizedBox(
          height: 20.0,
        ),
        build_iconcard(Icons.add, "Add a new card",()=>Navigator.pushNamed(_context, "/credit_card_detail"))
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
  Widget build_service(List<Service> _tags_service){
    {
      List<Widget> listname =  List<Widget>();
      List<Widget> listprice =  List<Widget>();
      for(var i = 0; i <_tags_service.length; i++){
        listname.add( Text("-"'${_tags_service[i].name}'"\n",style: textStyleH4,));
        listprice.add(Text('${_tags_service[i].Price}'"\n",style: textStyleH4a,));

      }

      return Row (children: <Widget>[Column( children: listname),SizedBox(width: 200.0,),Column(children: listprice)],) ;

    }
  }
  Widget buildHeaderActions() {
    var widget = cancel_backButton();
    return widget;
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
  Widget build_iconcard(IconData myicon, String name ,VoidCallback onCustomerAction) {
    var container = Container(

        child: InkWell(
          onTap: () { onCustomerAction();
},

            child: Row(

                children: <Widget>[
                  IconButton(icon:Icon(myicon), onPressed: () => {},iconSize: 30.0,),
                  SizedBox(width: 5.0,),

                    Text("$name",
                      style: textStyleH4,
                    )

                ]),

        ));
    return SizedBox(width: 40.0, height: 40.0, child: container);
  }
  Widget buildNext() {
    return Next_button(() => Navigator.pushNamed(_context, "/Contact_with_dr"));
  }}

Widget build_payment_statement() {

  return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Payment Method :",style: textStyleH2,)

          ]));}
Widget build_header() {

  return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Health care Service for a Dog',
              style: textStyleH2,
            ),

          ]));
}