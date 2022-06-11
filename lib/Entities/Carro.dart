class Carro{
  final String? color;
  final String? marca;
  final int? modelo;
  final String? placa;

  Carro({this.color, this.marca, this.modelo, this.placa});

  factory Carro.fromJson(Map<String, dynamic> json){
    return Carro(
      color: json['Color'],
      marca: json['marca'],
      modelo: json['modelo'],
      placa: json['placa'],
    );
  }
}
class Servicio{
  final String? lavado;
  final String? polish;
  final String? tapiceria;

  Servicio({this.lavado, this.polish, this.tapiceria});

  factory Servicio.fromJson(Map<String, dynamic> json){
    return Servicio(
      lavado: json['lavado'],
      polish: json['polish'],
      tapiceria: json['tapiceria']
    );
  }
}

/*   Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['color'] = this.color;
    data['marca'] = this.marca;
    data['modelo'] = this.modelo;
    data['placa'] = this.placa;
    return data;
  } */

}