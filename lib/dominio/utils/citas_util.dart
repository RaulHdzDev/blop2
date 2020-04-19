
import 'dart:convert';

import 'package:bloop/dominio/providers/citas_provider.dart';
import 'package:http/http.dart' as http;

Future<String> solicitarCitas (int id) async{
  var client = http.Client();
    var response = await client.post(
        'http://mante.hosting.acm.org/hemodialisis/mobile/citas_pacientes.php',
        body: {
          "id_pacientes": id.toString(),
        });
        return response.body;
}
Future<void> getCitas(int id, Citas citasInner) async {
    return solicitarCitas(id).then((value){
      final decodedData = json.decode(value);
      citasInner.fromJsonList(decodedData['Citas_pacientes']);
    });
  }