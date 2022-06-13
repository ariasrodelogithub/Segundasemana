import 'package:snippets/Entities/Carro.dart';
import 'package:snippets/Entities/Servicio.dart';
import 'package:snippets/Entities/registros.dart';

class ResponseFirebase {
  List<Registros>? registros;

  ResponseFirebase({
    this.registros,
  });
/* 
  ResponseFirebase.fromJson(Map<String, dynamic> json) {
    if (json['Registros'] != null) {
      registros =  <Registros>[];
      json['Registros'].forEach((v) {
        registros!.add(Registros.fromJson(v));
      });
    }
  } */

  ResponseFirebase.fromJson(List<dynamic> json) {
    registros = json.map((e) => Registros.fromJson(Map<String, dynamic>.from(e  as Map))).toList();
  }
}
