import 'package:flutter/material.dart';

class homefragment extends StatefulWidget {
  homefragment({Key key}) : super(key: key);

  @override
  _homefragmentState createState() => _homefragmentState();
}

class _homefragmentState extends State<homefragment> {
  String _txtcita="Próxima cita:";
  String _txttiempo="3 días con 4 horas";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 130.0,
              child: Image(
                image: AssetImage('assets/logohemo.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 230,
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
