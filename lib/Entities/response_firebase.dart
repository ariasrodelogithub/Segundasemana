
import 'package:snippets/Entities/registros.dart';

class ResponseFirebase{

  List<Registros>? registros;

  ResponseFirebase({this.registros});

  ResponseFirebase.fromJson(Map<String, dynamic> json) {

    if (json['registros'] != null) {

      registros = <Registros>[];
      json['Registros'].forEach((v) {
        registros!.add(Registros.fromJson(v));
      });
    }
  }
  