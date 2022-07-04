import 'package:belajar/dashboard.dart';
import 'package:belajar/login.dart';
import 'package:flutter/material.dart';

import 'datalist.dart';

void main() {
  // runApp(new MaterialApp(
  //   home: new MyApp(),
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'yoyo Dashboard';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: MyLogin(),
      ),
    );
  }
}
