import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:bloop/dominio/sharedPref.dart';

class profile_fragment extends StatefulWidget {
  profile_fragment({Key key}) : super(key: key);

  @override
  _profile_fragmentState createState() => _profile_fragmentState();
}

class _profile_fragmentState extends State<profile_fragment> {
  final prefs = new SharedPref();
  String _name;
  String _email;
  String _numero;

  @override
  void initState() {
    super.initState();
    _name = prefs.nombre;
    _email = prefs.correo;
    _numero = prefs.telefono;
  }

  @override
  Widget build(BuildContext context) {
    Widget _nombre = new Container(
      padding: const EdgeInsets.all(10.0), //Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("Nombre",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                ),
                //Need to add space below this Text ?
                new Text(
                  _name,
                  style: new TextStyle(color: Colors.grey[850], fontSize: 16.0),
                ),
              ],
            ),
          ),
          
          IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () => Text("o"))
        ],
      ),
    );

    Widget _correo = new Container(
      padding: const EdgeInsets.all(10.0), //Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("Correo",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                ),
                //Need to add space below this Text ?
                new Text(
                  _email,
                  style: new TextStyle(color: Colors.grey[850], fontSize: 16.0),
                ),
              ],
            ),
          ),
          
          IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () => Text("o"))
        ],
      ),
    );

    Widget _telefono = new Container(
      padding: const EdgeInsets.all(10.0), //Top, Right, Bottom, Left
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: new Text("Teléfono",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0)),
                ),
                //Need to add space below this Text ?
                new Text(
                  _numero,
                  style: new TextStyle(color: Colors.grey[850], fontSize: 16.0),
                ),
              ]
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.edit,
                color: Colors.black,
                size: 20,
              ),
              onPressed: () {
                showBottomSheet(
                    context: context,
                    builder: (context) => Container(
                          height: 200,
                          color: Colors.lightBlue,
                        ));
              }),                      
        ],
      ),
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 45,
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 110.0,
              child: Image(
                image: AssetImage('assets/logohemo.png'),
              ),
            ),
            _nombre,
            _correo,
            _telefono,
          ],
        ),
      ),
    );
  }
}
