import 'package:bloop/dominio/class/fechas.dart';
import 'package:bloop/dominio/providers/cita.dart';
import 'package:bloop/dominio/providers/citas_provider.dart';
import 'package:bloop/dominio/providers/local_notification.dart';
import 'package:bloop/dominio/sharedPref.dart';
import 'package:bloop/dominio/utils/citas_util.dart';
import 'package:flutter/material.dart';
import 'package:bloop/complements/custom_expansion_tile.dart' as custom;
import 'package:bloop/pages/homePage_widget/itemCite.dart';
import 'package:provider/provider.dart';

class ExpansionCites extends StatelessWidget {
  const ExpansionCites({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final citas = Provider.of<Citas>(context);
    final prefers = SharedPref();
    return Container(
      child: Column(
        children: <Widget>[
          new custom.ExpansionTile(
            backgroundColor: Colors.lightBlue,
            headerBackgroundColor: Colors.lightBlue,
            iconColor: Colors.white,
            title: Container(
              color: Colors.lightBlue,
              width: double.infinity,
              child: Text(
                "Pulse para desplegar citas Recientes",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontFamily: "CaviarDreams",
                ),
              ),
            ),
            trailing: Icon(
              Icons.arrow_drop_down,
              size: 32,
              color: Colors.white,
            ),
            onExpansionChanged: (value) {
              final localNotification = LocalNotification();
              localNotification.sendNotificationNow( "Cita por Expirar", "su cita esta por expirar", 12345678);
              _traerCitas(int.parse(prefers.id),citas);
              _calcularNotificaciones(citas.citas);
            },
            children: items(citas.citas),
          )
        ],
      ),
    );
  }

  List<Widget> items(List<Cita> citas) {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < citas.length; i++) {
      list.add(ItemCite(snapshot: citas[i]));
    }
    return list;
  }

  void _traerCitas(int parse, Citas citas) {
    getCitas(parse, citas);
  }

  void _calcularNotificaciones(citas) {
    final localNotification = LocalNotification();
    for (Cita cita in citas) {
      List<Fechas> fecha = new List<Fechas>();
      var item =cita.fecha.toString().trim().split("-").toList();
      for (int i = 0; i<item.length;i++) {
        fecha.add(new Fechas(int.parse(item[0]),int.parse(item[1]),int.parse(item[2])));
        break;
      }
      for (var item in fecha) {
        localNotification.sendNotification(DateTime.utc(item.anio,item.mes,item.dia), "Cita", "subText", 12345678);
      }
    }
  }
}
