import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {

  static final SharedPref _instancia = new SharedPref._internal();

  factory SharedPref(){
    return _instancia;
  }

  SharedPref._internal();

  SharedPreferences _prefs;

  initPrefs() async {
   _prefs = await SharedPreferences.getInstance();
  }

  //-------------NOMBRE-------------

  get nombre {
    return _prefs.getString('nombre') ?? '';
  }

  set nombre (String value) {
    _prefs.setString('nombre', value);
  }

  //-------------ID-------------

  get  id {
    return _prefs.getString('id') ?? '';
  }

  set id (String value) {
    _prefs.setString('id', value);
  }

  //-----------CORREO---------------

  get correo {
    return _prefs.getString('correo') ?? '';
  }

  set correo (String value) {
    _prefs.setString('correo', value);
  }

  //------------TELEFONO-----------------

  get telefono {
    return _prefs.getString('telefono') ?? '';
  }

  set telefono (String value) {
    _prefs.setString('telefono', value);
  }

  //-----------LOGIN------------------

  get login {
    return _prefs.getString('estado_login') ?? '';
  }

  set login (String value) {
    _prefs.setString('estado_login', value);
  }

}
