import 'package:flutter/material.dart';
import 'package:testflutter/dashboard.dart';
import 'package:testflutter/signin.dart';
import 'package:testflutter/signup.dart';
import 'model.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/signin': (context) => SignIn(),
      '/signup': (context) => SignUp(),
      '/dashboard': (context) => Dashboard(),
    },
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Widget with "Material design"
    return MaterialApp(
      title: 'SecureCiti',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SecureCiti'),
        ),
        body: Center(
          child: new Column(
            children: <Widget>[
              const Text.rich (
                TextSpan(
                  text: 'Welcome to ', // default text style
                  children: <TextSpan>[
                    TextSpan(text: 'SecureCiti', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              new RaisedButton(
                child: new Text("Sign In"),
                color:  Colors.blueAccent[600],
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
              ),

              new RaisedButton(
                child: new Text("Sign Up"),
                color:  Colors.blueAccent[600],
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
              ),

              new RaisedButton(
                child: new Text("Dashboard"),
                color:  Colors.blueAccent[600],
                onPressed: () {
                  Navigator.pushNamed(context, '/dashboard');
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}