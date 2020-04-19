class Fechas{

  int _anio;
  int _mes;
  int _dia;

  Fechas(this._anio,this._mes,this._dia);

  set anio(int anio){
    this._anio=anio;
  }
  set mes(int mes){
    this._mes=mes;
  }
  set dia(int dia){
    this._dia=dia;
  }
  get anio{
    return _anio;
  }
  get mes{
    return _mes;
  }
  get dia{
    return _dia;
  }
}