import 'package:flutter/material.dart';
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
  String _id_paciente;

  @override
  void initState() {
    super.initState();
    _name = prefs.nombre;
    _email = prefs.correo;
    _numero = prefs.telefono;
    _id_paciente = prefs.id;
  }

  @override
  Widget build(BuildContext context) {
    Widget _id = new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  child: ListTile(
                    leading: Icon(Icons.assignment_ind),
                    title: new Text("Id",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                    subtitle: Text(
                      _id_paciente,
                      style: new TextStyle(
                          color: Colors.grey[850], fontSize: 16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    Widget _nombre = new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: new Text("Nombre",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                    subtitle: Text(
                      _name,
                      style: new TextStyle(
                          color: Colors.grey[850], fontSize: 16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget _correo = new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  child: ListTile(
                    leading: Icon(Icons.alternate_email),
                    title: new Text("Correo",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0)),
                    subtitle: Text(
                      _email,
                      style: new TextStyle(
                          color: Colors.grey[850], fontSize: 16.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget _telefono = new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    child: ListTile(
                      leading: Icon(Icons.phone_android),
                      title: new Text("Teléfono",
                          style: new TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18.0)),
                      subtitle: Text(
                        _numero,
                        style: new TextStyle(
                            color: Colors.grey[850], fontSize: 16.0),
                      ),
                    ),
                  ),
                  //Need to add space below this Text ?
                ]),
          ),
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
            Text('Información de usuario',style: TextStyle(
              fontSize: 20
            ),),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8)
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[300],
                          blurRadius: 0.1,
                          spreadRadius: 0.1,
                          offset: Offset(0, 3))
                    ]),
                child: Column(
                  children: <Widget>[
                    _id,
                    Divider(color: Colors.black,indent: 15,endIndent: 15,),
                    _nombre,
                    Divider(color: Colors.black,indent: 15,endIndent: 15,),
                    _correo,
                    Divider(color: Colors.black,indent: 15,endIndent: 15,),
                    _telefono,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
