import 'package:flutter/material.dart';
class mainInterface extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      // TODO: implement build
        appBar: new AppBar(),
        drawer:  Drawer(
          child:  ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(

                child: Image.asset("assets/splash.png"),
                decoration: BoxDecoration(
                  color: Colors.blue,

                ),
              ),
              ListTile(


                trailing: Icon(Icons.home),
                title: Text('Home'),

                onTap: () {
                  Navigator.pushNamed(context, '/home');

                },
              ),
              ListTile(
                trailing: Icon(Icons.person),
                title: Text('My Profile'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.pets),
                title: Text('My Pets'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.history),
                title: Text('History'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.local_offer),
                title: Text('Offers'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.room_service),
                title: Text('Request service'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.list),
                title: Text('Terms and Condition'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.help),
                title: Text('Help'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                trailing: Icon(Icons.message),
                title: Text('Contact Us'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
            ],
          ),

        )


    );
  }

}