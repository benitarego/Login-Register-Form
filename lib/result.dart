import 'package:flutter/material.dart';
import 'package:testflutter/model.dart';
import 'signin.dart';
import 'signup.dart';

class Result extends StatelessWidget {
  Model model;

  Result({this.model});

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(model.firstName, style: TextStyle(fontSize: 22)),
            Text(model.lastName, style: TextStyle(fontSize: 22)),
            Text(model.email, style: TextStyle(fontSize: 22)),
            Text(model.password, style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    ));
  }
}