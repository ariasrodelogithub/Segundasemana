import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';

import '../Entities/response_firebase.dart';

class FirebaseConnection {
  //devuelve la instancia de la base de datos
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }
}
// void getAllRegistros() {
//   DatabaseReference _registros = instanceFirebase();
//   _registros.onValue.listen((event) {
//     final registros = event.snapshot.value;
//     Map<String, dynamic> registrosJson = json.decode(registros.toString());
//     print(registrosJson);
//     ResponseFirebase reg = ResponseFirebase.fromJson(registrosJson);
//     print(reg);
//   });
// }

void getAllRegistros() async {
  final snapshot = await instanceFirebase().get();
  print(snapshot.value);
}
