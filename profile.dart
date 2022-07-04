import 'package:belajar/modul.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  // _MyDashboardState createState() => _MyDashboardState();
  State<MyProfile> createState() => _MyProfile();
}

class _MyProfile extends State<MyProfile> {
  var modul = Modul();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // padding: const EdgeInsets.all(30),
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'This Profile layout',
                  style: TextStyle(fontSize: 20),
                )),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
