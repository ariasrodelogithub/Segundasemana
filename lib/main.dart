import 'package:flutter/material.dart';
import 'package:snippets/views/list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lugares Exóticos',
      home: listview(),
    );
  }
}
