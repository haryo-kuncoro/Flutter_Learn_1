import 'package:belajar/modul.dart';
import 'package:flutter/material.dart';

class MyFamily extends StatefulWidget {
  const MyFamily({Key? key}) : super(key: key);

  @override
  // _MyDashboardState createState() => _MyDashboardState();
  State<MyFamily> createState() => _MyFamily();
}

class _MyFamily extends State<MyFamily> {
  var modul = Modul();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // padding: const EdgeInsets.all(30),
      appBar: AppBar(
        title: Text('Add Family'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'This Family layout',
                  style: TextStyle(fontSize: 20),
                )),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
