import 'package:bloop/dominio/providers/cita.dart';
import 'package:flutter/material.dart';

class ItemCite extends StatelessWidget {
  Cita snapshot;
  ItemCite({Key key, this.snapshot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Container(
        height: 60.0,
        margin: const EdgeInsets.only(
            top: 10.0, left: 5.0, right: 5.0, bottom: 10.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: new BorderRadius.all(Radius.circular(5.0)),
        ),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new Container(
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    snapshot.hora == '12:00:00' || snapshot.hora == '14:00:00'
                        ? "   ${this.snapshot.hora} PM"
                        : "   ${this.snapshot.hora} AM",
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'SFUIDisplay',
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "No. camilla: ${snapshot.camilla}",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'SFUIDisplay',
                        color: Colors.white),
                  ),
                  Text(
                    "       fecha: ${snapshot.fecha}",
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'SFUIDisplay',
                        color: Colors.white),
                  ),
                  
                ],
              ),
            ),
            IconButton(
                icon: Icon(Icons.calendar_today),
                color: Colors.white70,
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
