import 'package:snippets/Entities/Carro.dart';
import 'package:snippets/Entities/Servicio.dart';

class Registros {
  final Carro? carro;
  final Servicio? servicio;
  final String? apellido;
  final int? cel;
  final String? licencia;
  final String? nombre;
  final String? image;
  final String? key;

  Registros(
      {this.carro,
      this.servicio,
      this.apellido,
      this.cel,
      this.licencia,
      this.nombre,
      this.image,
      this.key,
      });

  factory Registros.fromJson(Map<String, dynamic> json) {
    return Registros(
      carro: json['Carro'] != null
          ? Carro.fromJson(Map<String, dynamic>.from(json['Carro'] as Map))
          : null,
      servicio: json['Servicio'] != null
          ? Servicio.fromJson(
              Map<String, dynamic>.from(json['Servicio'] as Map))
          : null,
      apellido: json['apellido'],
      cel: json['cel'],
      licencia: json['licencia'],
      nombre: json['nombre'],
      image: json['image'],
      key: json['key'],
    );
  }
}
