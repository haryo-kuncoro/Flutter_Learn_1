import 'package:belajar/modul.dart';
import 'package:flutter/material.dart';

class MySetting extends StatefulWidget {
  const MySetting({Key? key}) : super(key: key);

  @override
  // _MyDashboardState createState() => _MyDashboardState();
  State<MySetting> createState() => _MySetting();
}

class _MySetting extends State<MySetting> {
  var modul = Modul();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // padding: const EdgeInsets.all(30),
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'This Setting layout',
                  style: TextStyle(fontSize: 20),
                )),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
