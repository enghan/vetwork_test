import 'package:flutter/material.dart';
import 'home.dart';
import 'UI/folder_style/ui_constants.dart';
import 'Model/exist_address.dart';
import 'UI/folder_style/ui_constants.dart';
import 'UI/folder_style/AppStyles.dart';
import 'Model/pet.dart';

class drawer extends StatelessWidget{
  BuildContext _context;
  @override
  Widget build(BuildContext context) {
    _context = context;

    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(),
        drawer: Drawer(child:builddrawer()),
        resizeToAvoidBottomPadding: false,

        body: buildPageContainer()
    );
  }
  var _name;
  List<pet> pett = [
    pet(
        name: "Baxter",
      sex: "male" ,
      weight:30.0,
        age: 20,
      image: "assets/dog.png",
       ),
  

  ];
  bool selected = false;
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
        buildheaderText(),
        SizedBox(
          height: 10.0,
        ),
        build_header(),
        SizedBox(
          height: 10.0,
        ),

        build_pet_profile(),
        SizedBox(
          height: 20.0,
        ),
        buildsecondText(),

        SizedBox(
          height: 20.0,
        ),
        build_cardaddress(),
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
Widget buildheaderText(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
       Row(children: <Widget>[
      //  IconButton(icon:Icon( Icons.menu), onPressed: () => Scaffold.of(_context).openDrawer()),

         SizedBox(width: 10.0,),
         Image.asset('assets/logo.png')
       ],),
    SizedBox(height: 10.0,),
    Container(

    child: Text("Request Service",style: textStyleH2,),
  )
   ],) ;

}
  Widget buildsecondText(){
    return Container(
      child: Text("Coming up visits",style: textStyleH2,),
    );

  }
  Widget builddrawer(){

    return  Drawer(

      child:  ListView(

        padding: EdgeInsets.only(top:30.0),
        children: <Widget>[
          header_drawer ( ),
          ListTile(
            trailing: Icon(Icons.home),
            title: Text('Home'),

            onTap: () {
              Navigator.push(_context, new MaterialPageRoute(
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
          Divider(color:Colors.black38),
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
              Navigator.pushNamed(_context, '/setting');

            },
          ),
        ],
      ),

    );


  }
  Widget header_drawer(){
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0,),
        Container(height:50.0,child:Image.asset('assets/logo.png') ,),

      SizedBox(width: 70.0,),
        Icon(Icons.clear,size: 40.0,),
      ],
    );
  }
  Widget build_pet_profile(){

   for(var i=0;i<pett.length;i++){
    _name='${pett[i].name}';
              return Row(children: <Widget>[
                  Container(height:80.0,width:150.0,child: buildCard(pett, i)),
    SizedBox(width: 10.0,),
                  build_Another_card('assets/another.png',"Another",() => Navigator.pushNamed(_context, "/home")),
    ]);
  }}
  Widget build_Another_card(String image, String title ,VoidCallback onCustomerAction) {
    var card = Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: new InkWell(
          onTap: () {
            onCustomerAction();
          },
          child: Padding(
            child: Row(
              children: <Widget>[
                Image.asset("$image"),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      title,
                      style: textStyleH4a,
                    ))
              ],
            ),
            padding: EdgeInsets.all(7.0),
          ),
        ));
    return SizedBox(width: 150.0, height: 80.0, child: card);
  }
  Widget buildCard( List<pet> pett , int position) {
    var card = Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child:  InkWell(
          onTap: () {

          },
          child: Padding(
            child: Row(
              children: <Widget>[
                Image.asset('${pett[position].image}'),
                Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text(
                      '${pett[position].name}',
                      style: textStyleH4a,
                    ))
              ],
            ),
            padding: EdgeInsets.all(7.0),
          ),
        ));
    return  card;
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
    return Container(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
         Icon(Icons.calendar_today),
          // service_Card(address),
SizedBox(width: 10.0,),
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
Widget build_header(){
    return  Container(
      height: 100.0,
        child: Card(

        child: Row(children: <Widget>[
          SizedBox(width: 10.0,),
          Icon(Icons.error_outline),
          SizedBox(width: 10.0,),
          Text("you have recently added a new pet \tTap to Complete '$_name' Profile")

        ],)

    ));
}

}