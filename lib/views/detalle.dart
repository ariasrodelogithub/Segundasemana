import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snippets/Entities/registros.dart';
import 'package:snippets/domain/firebase_connection.dart';

import '../Entities/Carro.dart';
import '../Entities/Servicio.dart';

class Detalle extends StatefulWidget {
  const Detalle({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  State<Detalle> createState() => _DetalleState();
}

class _DetalleState extends State<Detalle> {
  Registros registro = Registros();
  final firebaseConnection = FirebaseConnection();

  void callDatabase() async {
    final respuestas = await firebaseConnection.get_other_register(widget.id);
    if (registro.nombre == null) {
      setState(() {
        registro = respuestas.registros![0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    callDatabase();

    if(registro.nombre != null){
      return Scaffold(
        appBar: AppBar(
          title: const Text('detalles'),
        ),
        body: Container(
          child: Column(children: [
            Text(registro.nombre!),
            Image(
              image: NetworkImage(registro.image!),
              fit: BoxFit.cover,
            ),
            Text('servicio: ${registro.servicio!.lavado}'),
            Text('polish: ${registro.servicio!.polish}'),
            Text('tapiceria: ${registro.servicio!.tapiceria}'),
            Text('color carro: ${registro.carro!.color}'),
            Text('modelo carro: ${registro.carro!.modelo}')
          ]),
        ),
      );
    }else{
      return Scaffold(
        appBar: AppBar(
          title: const Text('detalles'),
        ),
        body: Container(
          child: Text('Cargando...')
        ),
      );
    }
    
  }
}
