import 'package:flutter/material.dart';
import 'UI/folder_style/AppStyles.dart';
import 'UI/folder_style/ui_constants.dart';
import 'Model/exist_address.dart';
import 'add_address.dart';
import 'UI/folder_style/colors.dart';
import 'cancel_backButton.dart';
import 'Next_button.dart';
class request_information extends StatelessWidget {
    final Widget child;
  BuildContext _context;
    request_information({Key key, this.child}) : super(key: key);

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
    List<exist_address> address = [
      exist_address(
          name: "John Doe",
          address: "11 EL Yassmine villa ,Fifth settlement,new",
          phone: "(+20)123456789"),
      exist_address(
          name: "John Doe",
          address: "11 EL Yassmine villa ,Fifth settlement,new",
          phone: "(+20)123456789"),
    ];
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
          build_cardaddress(),
          SizedBox(
            height: 20.0,
          ), build_iconcard(Icons.add,"Add new address",()=>Navigator.pushNamed(_context, "/add_address")),

      SizedBox(
            height: 5.0,
          ),

          build_check("Schedual Visit", Visit_check),
          build_check("Priority Service", priority_check),
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
    return Next_button(() => Navigator.pushNamed(_context, "/add_address"));
  }

Widget test(){
  build_cardaddress();
}
    Widget build_iconcard(IconData myicon, String name, VoidCallback onCustomerAction) {
      var card = Container(
          child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: InkWell(
            onTap: () {onCustomerAction();},
            child: Padding(
              child:Row(

                  children: <Widget>[
                    Icon(
                      myicon,
                      size: 20.0,
                    ),
                    Text(
                      "$name",
                      style: textStyleH4a,
                    ),

                  ]),
              padding: EdgeInsets.all(page_padding),
            ),)
      ));
      return SizedBox(width: 400.0, height: 50.0, child: card);
    }



  Widget build_request_informaiton() {

          return Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Request Information',
                style: welcometextStyle,
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

  Widget service_Card(List<exist_address> Service, int position) {
    return Container(child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Checkbox(value: selected, onChanged: null),

          // service_Card(address),

           Expanded(child: Card(
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(page_padding),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('${Service[position].name}'),
                          Padding(
                            padding: EdgeInsets.only(top: top_padding),
                            child: Text('${Service[position].address}'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: top_padding),
                            child: Text('${Service[position].phone}'),
                          )
                        ]),
                  ))))
      ]));
  }

  Widget build_cardaddress() {
    return Container(
        height: 200.0,

        child: ListView.builder(
            itemCount: address.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, int position) {
              return service_Card(address, position);
            }));
  }

  Widget build_othercard(IconData myicon, String name) {
    var card = Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: InkWell(
          onTap: () {

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
    return SizedBox(width: 217.0, height: 50.0, child: card);
  }

  Widget build_check(String title, bool boolValue) {
    return Container(

        child: Row(
            children: <Widget>[
              Checkbox(
                value: boolValue,
                onChanged: (bool value) {},
              ),
              Text(title),
            ],

        ));
  }

}