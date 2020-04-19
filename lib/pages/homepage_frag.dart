import 'package:bloop/dominio/providers/citas_provider.dart';
import 'package:bloop/dominio/sharedPref.dart';
import 'package:flutter/material.dart';
import 'package:bloop/animation/FadeAnimation.dart';
import 'package:bloop/pages/homePage_widget/expansionCites.dart';
import '../animation/FadeAnimation.dart';

class homefragment extends StatefulWidget {
  homefragment({Key key}) : super(key: key);

  @override
  _homefragmentState createState() => _homefragmentState();
}

class _homefragmentState extends State<homefragment> {
  @override
  void initState() {
    super.initState();
  }

  String _txtcita = " Próxima cita:";
  String _nota =
      "Notas o consideraciones respecto a su proxima cita, si la cambia o demas aqui aparecerá. Asi como tambien Detalles";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 110.0,
              child: FadeAnimation(
                1,
                Image(
                  image: AssetImage('assets/logohemo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FadeAnimation(
              1.2,
              Container(
                  padding: const EdgeInsets.all(5),
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: ExpansionCites()),
            ),
            FadeAnimation(
              1.3,
              Text(
                " Notas",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "CaviarDreams",
                    fontSize: 18),
              ),
            ),
            FadeAnimation(
                1.5,
                Container(
                  margin: EdgeInsets.all(10.0),
                  height: 135,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: SingleChildScrollView(
                    child: Text(
                      _nota,
                      style: TextStyle(fontFamily: "CaviarDreams"),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
