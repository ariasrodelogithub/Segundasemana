//fireebase imports
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';


import 'package:flutter/material.dart';
import 'package:snippets/views/list_view.dart';
import 'package:snippets/views/listafirebase.dart';
import 'package:snippets/views/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shakira y yo ',
      home: Splash()
    );
  }
}
