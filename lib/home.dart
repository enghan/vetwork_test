import 'package:flutter/material.dart';
import 'UI/folder_style/ui_constants.dart';
import 'UI/folder_style/AppStyles.dart';
import 'UI/folder_style/colors.dart';
import 'package:vetwork_test/Model/service.dart';
import 'cancel_backButton.dart';
import 'Next_button.dart';
import 'pet_profile.dart';

class home extends StatelessWidget {
  BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
        resizeToAvoidBottomPadding: false,

        body: buildPageContainer());
  }

  Widget buildPageContainer() {
    var lstView = ListView(
      children: <Widget>[
        buildHeaderActions(),
        SizedBox(
          height: 10.0,
        ),
        buildWelcomeText(),
        SizedBox(
          height: 10.0,
        ),
        buildPidType(),
        SizedBox(
          height: 5.0,
        ),
        buildServiceType(),
        SizedBox(
          height: 10.0,
        ),
        service_Card(_tags_service),
        SizedBox(
          height: 10.0,
        ),
        build_iconcard(Icons.add, "another",()=>Navigator.pushNamed(_context, "/pet_profile")),
        SizedBox(
          height: 10.0,
        ),
        build_Estimated(),
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


  List<Service> _tags_service = [
    Service(name: 'checkup', Price: 10.0),
    Service(name: 'Vaccine', Price: 30.0),
    Service(name: 'X/ray', Price: 30.0),
    Service(name: 'Deworming', Price: 30.0),
  ];
  bool selected = false;
  bool Click = false;
  String result = "";


  Widget buildWelcomeText() {
    return Container(
        width: welcom_width,
        height: welcom_height,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Welcom',
                style: welcometextStyle,
              )
            ]));
  }

  Widget buildCard(String image, String title,) {
    var card = Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: new InkWell(
          onTap: () {

          },
          child: Padding(
            child: Column(
              children: <Widget>[
                Image.asset("$image"),
                Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      title,
                      style: textStyleH4a,
                    ))
              ],
            ),
            padding: EdgeInsets.all(7.0),
          ),
        ));
    return SizedBox(width: 100.0, height: 100.0, child: card);
  }

  Widget buildPidType() {
    var widget = Container(
        height: petType_height,
        width: petType_width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: bottom_padding),
              child: Text(
                'Chooes Species',
                style: textStyleH2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildCard("assets/dog.png", 'Dog'),
                SizedBox(
                  width: 10.0,
                ),
                buildCard("assets/cat.png", 'Cat'),
              ],
            )
          ],
        ));

    return widget;
  }

  Widget buildServiceType() {
    var widget = Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                  bottom: bottom_padding, top: page_padding),
              child: Text(
                'What does your pet need today',
                style: textStyleH2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                buildCard("assets/health.png", 'HealthCare'),
                SizedBox(
                  width: 10.0,
                ),
                buildCard("assets/hair_brush.png", 'Grooming'),
              ],
            )
          ],
        ));
    return widget;
  }

  Widget service_Card(List<Service> Service) {
    List<Widget> list = List<Widget>();
    for (var i = 0; i < Service.length; i++) {
      list.add(Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: new InkWell(
              onTap: () {
                var price = double.parse('${Service[i].Price}');

                print(price);
              },
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(('${Service[i].name}')),
              ))));
    }

    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 5.0, top: page_padding),
                child: Text("Chooes your service", style: textStyleH2,)
                ,),
              Row(children: list)

            ]));
  }

  Widget build_iconcard(IconData myicon, String name, VoidCallback onCustomerAction) {
    var container = Container(
        child: InkWell(
          onTap: () {onCustomerAction();},
          child: Padding(
            child: Row(
                 children: <Widget>[
                  Icon(
                    myicon,
                    size: 16.0,
                  ),
                  Text(
                    "$name",
                    style: textStyleH4a,
                  ),

                ]),
            padding: EdgeInsets.all(page_padding),
          ),)
    );
    return SizedBox(width: 20.0, height: 35.0, child: container);
  }

  Widget buildNext() {
    return Next_button(() =>
        Navigator.pushNamed(_context, "/request_information"));
  }

  Widget build_Estimated() {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Text("ESTIMETD PRICE:800_1000", style: textStyleH3,),
    );
  }
}

