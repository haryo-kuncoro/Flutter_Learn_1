import 'package:belajar/modul.dart';
import 'package:flutter/material.dart';

class MyMessage extends StatefulWidget {
  const MyMessage({Key? key}) : super(key: key);

  @override
  // _MyDashboardState createState() => _MyDashboardState();
  State<MyMessage> createState() => _MyMessage();
}

class _MyMessage extends State<MyMessage> {
  var modul = Modul();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // padding: const EdgeInsets.all(30),
      appBar: AppBar(
        title: Text('Message'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'This Message layout',
                  style: TextStyle(fontSize: 20),
                )),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
