import 'home.dart';
import 'inicio_nav.dart';
import 'package:bloop/home.dart';
import 'package:bloop/inicio_nav.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'inicio_nav.dart';
import 'dominio/sharedPref.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new SharedPref();
  await prefs.initPrefs();
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
  final prefs = new SharedPref();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 4),
      () {
        if (prefs.login == 'true') {
          Navigator.pushReplacementNamed(context, 'inicio_nav');
        } else {
          Navigator.push(
            this.context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        }
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
