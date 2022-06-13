import 'package:snippets/Entities/Carro.dart';
import 'package:snippets/Entities/Servicio.dart';
import 'package:snippets/Entities/registros.dart';

class ResponseFirebase {
  List<Registros>? registros;

  ResponseFirebase({
    this.registros,
  });

  ResponseFirebase.fromJson(List<dynamic> json) {
    registros = json.map((e) => Registros.fromJson(Map<String, dynamic>.from(e  as Map))).toList();
  }
}
