import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'listafirebase.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  State<Menu> createState() => _MenuS();
}

class _MenuS extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('lista de cleintes'),
            ),
            body: ListView(children: [
              ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('Client List'),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CallFirebase()));
                  }
                  ),
                  const ListTile(
                    leading: Icon(Icons.cloud_circle),
                    title: Text('soon..'),
                  ),
                  const ListTile(
                    leading:Icon(Icons.cloud_circle),
                    title:Text('soo..'),

                  ), const ListTile(
                    leading:Icon(Icons.cloud_circle),
                    title:Text('soo..'),
                  )
            ]));
  }
}

  