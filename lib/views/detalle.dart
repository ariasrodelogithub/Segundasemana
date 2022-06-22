import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Entities/Carro.dart';
import '../Entities/Servicio.dart';

class Detalle extends StatelessWidget {
  const Detalle(
      {Key? key,
      required this.nombre,
      required this.apellido,
      required this.licencia,
      required this.cel,
      required this.image,
      required this.carro,
      required this.servicio})
      : super(key: key);

  final String nombre;
  final String apellido;
  final int cel;
  final String licencia;
  final String image;
  final Carro carro;
  final Servicio servicio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('detalles'),
      ),
      body: Container(
        child: Column(children: [
          Text(nombre),
          Image(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
          Text('servicio: ${servicio.lavado}'),
          Text('polish: ${servicio.polish}'),
          Text('tapiceria: ${servicio.tapiceria}'),
          Text('color carro: ${carro.color}'),
          Text('modelo carro: ${carro.modelo}')
        ]),
      ),
    );
  }
}
