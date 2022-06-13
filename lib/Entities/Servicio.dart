class Servicio {
  final String? lavado;
  final String? polish;
  final String? tapiceria;

  Servicio({this.lavado, this.polish, this.tapiceria});

  factory Servicio.fromJson(Map<String, dynamic> json) {
    return Servicio(
      lavado: json['lavado'],
      polish: json['polish'],
      tapiceria: json['tapiceria'],
    );
  }
  String toString() {
    return 'servicios:\nlavado:$lavado\npolish:$polish\ntapiceria:$tapiceria';
  }
}
