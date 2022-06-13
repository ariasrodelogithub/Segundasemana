import 'package:firebase_database/firebase_database.dart';

import '../Entities/response_firebase.dart';

class FirebaseConnection {
  //devuelve la instancia de la base de datos
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  /*void getAllRegistros() {
    DatabaseReference _registros = instanceFirebase();
    
    _registros.onValue.listen((event) {
      final registros = event.snapshot.value;
      Map<String, dynamic> registrosJson = json.decode(registros.toString());
      
      ResponseFirebase reg = ResponseFirebase.fromJson(registrosJson);
      print(reg);
    });
  }*/

  Future<ResponseFirebase> getAllRegistros() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      print('-----------------------------');
      print(response.value.runtimeType);
      final datos = Map<String, dynamic>.from(response.value as Map);
      final registers = ResponseFirebase.fromJson(datos.values.toList());
      print(registers);
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}
