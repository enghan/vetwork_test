import 'package:flutter/material.dart';
import 'package:vetwork_test/Model/exist_address.dart';

import 'package:vetwork_test/UI/folder_style/ui_constants.dart';
import 'package:vetwork_test/UI/folder_style/AppStyles.dart';
import 'package:vetwork_test/UI/skip_save_button.dart';
class MY_profile extends StatelessWidget {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    // TODO: implement build
    return   Scaffold(



                resizeToAvoidBottomPadding: false,
                body: buildPageContainer()
    );
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
  bool selected = false;

  Widget buildPageContainer() {
    var lstView = ListView(
      children: <Widget>[
        build_header(),
        SizedBox(height: 10.0,),
        build_card_header(),
SizedBox(height: 10.0,),
        build_invitation_header(),
        SizedBox(height: 10.0,),
        build_personal_information(),
        SizedBox(height: 10.0,),
        build_address_widget(),
        SizedBox(
          height: 10.0,
        ), build_iconcard(Icons.add,"Add new address",()=>Navigator.pushNamed(_context, "/add_address")),

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

            alignment: FractionalOffset.bottomCenter,
            child: build_skipandsave(),
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


Widget build_header(){
return Row(children: <Widget>[
  IconButton(icon: Icon(Icons.arrow_back),onPressed:()=>Navigator.pushNamed(_context, '/drawer'),),
  SizedBox(width: 5.0,),
  Icon(Icons.person),
  SizedBox(width: 5.0,),
  Text("MY Profile")
],);


}

  Widget build_card_header() {
    return Container(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'MY Points',
                style: textStyleH3,
              ),
              Padding(
                padding: EdgeInsets.only(top: top_padding),
                child: Text(
                  "You have 0 points . Start inviting people to get more points",
                  style: textStyleH6,
                ),
              )
            ]));
  }

  Widget build_invitation_header() {
    return Container(

        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Invitation code ',
                style: textStyleH3,
              ),
              Padding(
                padding: EdgeInsets.only(top: top_padding),
                child: Text(
                  "Use this invitation code to gain points and discounts on your services",
                  style: textStyleH6,
                ),
              ),
        Padding(
            padding: EdgeInsets.only(top: top_padding),
            child:
              Center(

                child: Text(
                  "JOME10OFF10%",
                  style: textStyleH2,
                ),
              ))
            ]));
  }

  Widget build_icon_input(String label,String hint ) {
    return SingleChildScrollView(child:
    Column(

      children: <Widget>[TextField(
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          prefix: Text("+20 ", style: textStyleH2,),
          suffix: Icon(Icons.calendar_today),

        ),
        keyboardType: TextInputType.number,
      ),],
    ));
  }
  Widget build_name_input(String label,String hint) {
    return SingleChildScrollView(
        child: Column(

          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: label,
                hintText: hint,
                hintStyle: TextStyle(color: Colors.black),
              ),
              keyboardType: TextInputType.text,
            ),
          ],

        )
    );
  }
  Widget build_personal_information(){
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

      Text("personal Information", style: textStyleH2,),
    build_name_input("NAME","John doe"),
    build_icon_input("PHONE","1234567890"),
    ] ,);

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

Widget build_skipandsave(){
    return skip_save_button(() => Navigator.pushNamed(_context, "/Contact_with_dr"),() => Navigator.pushNamed(_context, "/Contact_with_dr"));
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
    return SizedBox(width: double.infinity, height: 40.0, child: card);
  }

  Widget build_address_widget(){

return Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
  Text("Address" ,style: textStyleH2,),
  build_cardaddress(),
],);


  }
}