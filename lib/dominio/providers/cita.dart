class Cita{
  String id_cita;
  String id_paciente;
  String id_empleado;
  String _hora;
  String _fecha;
  String _id_camilla;
  bool _notificate=false;

  Cita(this.id_cita,this.id_paciente,this.id_empleado,this._id_camilla,this._hora,this._fecha,this._notificate);
  
  get notificate{
    return notificate;
  }
  set notificate(bool notificate){
    this._notificate=notificate;
  }
  get hora{
    return this._hora;
  }
  get fecha {
    return this._fecha;
  }
  get camilla {
    return this._id_camilla;
  }
  Cita.fromJsonMap(Map<dynamic, dynamic> json) {
    id_cita               = json['id_citas'];
    id_paciente           = json['id_pacientes'];
    id_empleado           = json['id_empleados'];
    _id_camilla           = json['id_camilla'];
    _hora                 = json['hora'];
    _fecha                = json['fecha'];
  }
}