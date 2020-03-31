import 'package:bloop/animation/ButtonAnimation.dart';
import 'package:bloop/animation/FadeAnimation.dart';
import 'package:bloop/main.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controllername = TextEditingController();
  final _controllerpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.lightBlue[900],
          Colors.lightBlue[800],
          Colors.lightBlue[400]
        ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Bienvenido",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "CaviarDreams",
                            fontSize: 40),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "Nos preocupamos por ti",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "CaviarDreams",
                            fontSize: 18),
                      )),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                          ),
                          FadeAnimation(
                              1.4,
                              Container(
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      style: TextStyle(color: Colors.black),
                                      autofocus: true,
                                      textAlign: TextAlign.left,
                                      autocorrect: true,
                                      controller: _controllername,
                                      cursorColor: Colors.pink,
                                      cursorRadius: Radius.circular(3),
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.email,
                                          color: Colors.lightBlue,
                                        ),
                                        labelText: "Correo",
                                        helperText: "tunombre@ejemplo.com",
                                        labelStyle: TextStyle(
                                            fontFamily: "CaviarDreams",
                                            fontSize: 18),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        hintStyle:
                                            TextStyle(color: Colors.white38),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    TextFormField(
                                      style: TextStyle(color: Colors.black),
                                      obscureText: true,
                                      maxLength: 10,
                                      autofocus: true,
                                      textAlign: TextAlign.left,
                                      autocorrect: true,
                                      controller: _controllerpassword,
                                      cursorColor: Colors.pink,
                                      cursorRadius: Radius.circular(3),
                                      decoration: InputDecoration(
                                        suffixIcon: Icon(
                                          Icons.lock_outline,
                                          color: Colors.lightBlue,
                                        ),
                                        labelText: "Contraseña",
                                        labelStyle: TextStyle(
                                            fontFamily: "CaviarDreams",
                                            fontSize: 18,
                                            ),
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        hintStyle:
                                            TextStyle(color: Colors.white38),
                                        filled: true,
                                        fillColor: Colors.transparent,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 40,
                          ),
                          FadeAnimation(
                              1.6,
                              FlatButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed("inicio_nav");
                                  },
                                  child: ButtonAnimation(
                                      Color.fromRGBO(129, 213, 250, 2),
                                      Color.fromRGBO(40, 182, 246, 4)))),
                        ],
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
