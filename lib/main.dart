import 'home.dart';
import 'inicio_nav.dart';
import 'package:bloop/home.dart';
import 'package:bloop/inicio_nav.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'inicio_nav.dart';

void main() {
  runApp(MaterialApp(
    home: bloop(),
    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      "inicio_nav": (BuildContext context) => BottomNavBar(),
    },
  ));
}

class bloop extends StatefulWidget {
  @override
  _bloopState createState() => _bloopState();
}

class _bloopState extends State<bloop> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),
      () {
        Navigator.push(
          this.context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 120.0,
                      child: Image(
                        image: AssetImage('assets/logohemo.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                  ],
                )),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      strokeWidth: 8.0,
                      backgroundColor: Colors.pink,
                    ),
                    Padding(padding: EdgeInsets.only(top: 15.0)),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
