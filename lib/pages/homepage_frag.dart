import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bloop/animation/FadeAnimation.dart';
import '../animation/FadeAnimation.dart';

class homefragment extends StatefulWidget {
  homefragment({Key key}) : super(key: key);

  @override
  _homefragmentState createState() => _homefragmentState();
}

class _homefragmentState extends State<homefragment> {
  String _txtcita = " Próxima cita:";
  String _nota="Vete ya Si no encuentras motivos Para seguir conmigo Para qué continuar Es mejor Terminar como amigos Que ser como enemigos Esperando atacar Vete si no sientes que mi boca te provoca Sensaciones cuando ronda por tus labios Vete si tu cuerpo no se excita Cuando en forma de caricias Te recorro con mis manos Nada justifica en esta vida Soportar con la mentira una relación Si no hay amor, vete ya Si no hay amor";
  String _txttiempo = " 3 días con 4 horas";
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
              backgroundColor: Colors.transparent,
              radius: 130.0,
              child: 
              FadeAnimation(1,Image(
                image: AssetImage('assets/logohemo.png'),
              ),
            ),
            ),
            SizedBox(
              height: 10,
            ),
            FadeAnimation (1.2, Container(
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
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_txtcita + " " + _txttiempo,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "CaviarDreams",
                                fontSize: 14))
                      ],
                    ),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                      onPressed: () => _showToast("Desarolladores trabajando"))
                ],
              ),
            ),
            ),
            FadeAnimation(1.3,Text(
              "Notas",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "CaviarDreams",
                  fontSize: 18),
            ),),
            FadeAnimation(1.5,  Container(
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
                             child: SingleChildScrollView(child: Text(_nota,style: TextStyle(fontFamily: "CaviarDreams"),),),  
                                )
            )
          ],
        ),
      ),
    );
  }

  void _showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      fontSize: 15,
    );
  }
}
