import 'package:belajar/family.dart';
import 'package:belajar/message.dart';
import 'package:flutter/material.dart';
import 'package:belajar/modul.dart';
import 'package:belajar/settings.dart';
import 'package:belajar/login.dart';
import 'package:belajar/profile.dart';

import 'datalist.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({Key? key}) : super(key: key);

  @override
  // _MyDashboardState createState() => _MyDashboardState();
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      if (_counter == 15) {
        _counter = 0;
      } else {
        _counter++;
      }
    });
  }

  var modul = Modul();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(modul.title.value),
        actions: <Widget>[
          Center(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: FlutterLogo(
                size: 50.0,
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(5, 10, 20, 0),
                    child: FlutterLogo(
                      size: 50.0,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                    child: Text(
                      'Haryo Suro Kuncoro',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                    child: Text(
                      'Kepala Keluarga',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 231, 230, 230),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.message_outlined),
              title: Text('Messages'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyMessage();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.account_box_outlined),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyProfile();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.family_restroom_outlined),
              title: Text('Family'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ExampleExpandableFab();
                    },
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MySetting();
                    },
                  ),
                );
              },
            ),
            Divider(
              height: 20,
              thickness: 1,
              indent: 10,
              endIndent: 10,
              color: Colors.blueGrey,
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyLogin();
                    },
                  ),
                );
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyMessage();
                  },
                ),
              );
            },
            tooltip: 'Message',
            child: const Icon(Icons.message_outlined),
            heroTag: 'floatMenu',
          ),
          SizedBox(
            height: 10,
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () => _incrementCounter(),
            tooltip: 'Press Count',
            child: const Icon(Icons.add),
            heroTag: 'floatMenu',
          )
        ],
      ),
    );
  }
}
