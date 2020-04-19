
import 'dart:convert';

import 'package:bloop/dominio/providers/cita.dart';
import 'package:flutter/cupertino.dart';

class Citas with ChangeNotifier{
  
  List<Cita> _lista_citas = new List<Cita>();
  
  fromJsonList(List<dynamic> jsonList){
    _lista_citas.clear();
    if(jsonList == null)return;
    for (var item in jsonList) {
      final curso = new Cita.fromJsonMap(item);
      _lista_citas.add(curso);
    }
    notifyListeners();
  }
  get citas{
    List<Cita> citas = new List();
    this._lista_citas.forEach((cita) {
        citas.add(cita);
    });
    return citas;
  }
  

}