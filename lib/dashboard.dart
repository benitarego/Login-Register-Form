import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'model.dart';
import 'package:testflutter/signin.dart';
import 'package:testflutter/signup.dart';

class Dashboard extends StatelessWidget {
  Model model;

  Dashboard({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.purple,
                    Colors.black,
                  ]
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Welcome ', style: TextStyle(fontSize: 22)),
                  Text('Benita', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            CustomListTile(Icons.person, 'Profile', () => {}),
            CustomListTile(Icons.linked_camera, 'View Surviellance', () => {}),
            CustomListTile(Icons.lock, 'Logout', () => {}),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {

  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400)),
        ),
        child: InkWell(
        splashColor: Colors.black,
        onTap: onTap,
        child: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(icon),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(text, style: TextStyle(
                      fontSize: 16.0,
                    ),),
                  ),
                ],
              ),
              Icon(Icons.arrow_right),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
