import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:snippets/views/detalle.dart';

import '../Entities/Carro.dart';
import '../Entities/Servicio.dart';
import '../Entities/registros.dart';
import '../domain/firebase_connection.dart';

class CallFirebase extends StatefulWidget {
  const CallFirebase({Key? key}) : super(key: key);

  @override
  State<CallFirebase> createState() => _CallFirebaseState();
}

void openAlertDialog(BuildContext context, Registros registros) {
  AlertDialog alert = AlertDialog(
      title: Text('${registros.nombre!} ${registros.apellido!}'),
      content: SizedBox(
        height: 380,
        child: Column(
          //fit: StackFit.expand,
          children: [
            Image(
              image: NetworkImage(registros.image!),
              fit: BoxFit.cover,
            ),
            Text('${registros.carro}\n\n${registros.servicio}'),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK'),
        )
      ]);
  showDialog(context: context, builder: (BuildContext context) => alert);
}

class _CallFirebaseState extends State<CallFirebase> {
  final firebaseConnection = FirebaseConnection();
  List<dynamic> registros = [];
  @override
  Widget build(BuildContext context) {
    callDatabase();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shakira y yo "),
        centerTitle: true,
      ),
      body: Center(
        child: _createList(),
      ),
    );
  }

  Widget _createList() {
    return ListView.builder(
      itemCount: registros.length,
      itemBuilder: (_, index) {
        return _my_card(
          context,
          registros[index].nombre,
          registros[index].licencia,
          registros[index].cel,
          registros[index].apellido,
          registros[index].image,
          registros[index].carro,
          registros[index].servicio,
        );
      },
    );
  }

  void callDatabase() async {
    final respuestas = await firebaseConnection.getAllRegistros();
    if (registros.isEmpty) {
      setState(() {
        registros = respuestas.registros!;
      });
    }
  }
}

Widget _my_card(context, String nombre, String licencia, int cel,
    String apellido, String image, Carro carro, Servicio servicio) {
  return Center(
      child: Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: const EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        Text(nombre + " " + apellido),
        Image(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Detalle(
                            nombre: nombre,
                            licencia: licencia,
                            cel: cel,
                            apellido: apellido,
                            image: image,
                            servicio: servicio,
                            carro: carro),
                      ));
                },
                child: Text('detalle'))
          ],
        )
      ],
    ),
  ));
}



// class CardCustom extends StatelessWidget {
//   CardCustom(Map<String, String> gam, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Card(
//         color: Color.fromARGB(161, 235, 236, 238),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(12)),
//         ),
//         child: SizedBox(
//           width: 370,
//           height: 120,
//           child: Center(child: Text('Clean Caard')),
//         ),
//       ),
//     );
//   }
// }
