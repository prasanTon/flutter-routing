import 'package:flutter/material.dart';
import 'package:flutter_routing/about.dart';
import 'package:flutter_routing/contact.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
            child: Text('Go About'),
            color: Colors.teal,
            textColor: Colors.white,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Contact()));
            },
            child: Text('Go to Contact'),
            color: Colors.teal,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
