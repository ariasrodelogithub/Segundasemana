import 'package:firebase_database/firebase_database.dart';

import '../Entities/response_firebase.dart';

class FirebaseConnection {
  //devuelve la instancia de la base de datos
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  Future<ResponseFirebase> getAllRegistros() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      final datos = Map<String, dynamic>.from(response.value as Map);
      datos.forEach(((key, value) {
        value['key'] = key;
      }));

      final registers = ResponseFirebase.fromJson(datos.values.toList());
      return registers;
    } catch (e) {
      rethrow;
    }
  }

  Future<ResponseFirebase> get_other_register(id) async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.child(id).get();
      final datos = Map<String, dynamic>.from(response.value as Map);
      List<dynamic> mis_datos = [];
      mis_datos.add(datos);
      final registers = ResponseFirebase.fromJson(mis_datos);
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}
