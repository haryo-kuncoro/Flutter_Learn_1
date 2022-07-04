import 'package:belajar/dashboard.dart';
import 'package:belajar/modul.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLogin();
  // _MyLogin createState() => _MyLogin();
}

class _MyLogin extends State<MyLogin> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var modul = Modul();

  void submit(BuildContext context, String user, String password) {
    if (user.isEmpty || password.isEmpty) {
      final snackBar = SnackBar(
        duration: const Duration(seconds: 3),
        content: Text(
          'Username dan password harus diisi',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      return;
    }

    if (user == "yoyo" && password == "1") {
      AlertDialog alert = AlertDialog(
        title: Text("Login Berhasil"),
        content: Container(
          child: Text("Selamat Anda Berhasil login"),
        ),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () =>
                // Navigator.of(context).pop(),

                Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MyDashboard();
                },
              ),
            ),
          ),
        ],
      );

      showDialog(context: context, builder: (context) => alert);
      return;
    } else {
      AlertDialog alert = AlertDialog(
        title: Text("Login Gagal"),
        content: Container(
          child: Text("Username dan password salah"),
        ),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      );

      showDialog(context: context, builder: (context) => alert);
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isScreenWide =
        MediaQuery.of(context).size.width >= MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text(modul.title.value),
      //   actions: <Widget>[
      //     Center(
      //       child: Container(
      //         alignment: Alignment.centerLeft,
      //         padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
      //         child: FlutterLogo(
      //           size: 50.0,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 100, 10, 10),
              child: FlutterLogo(
                size: 120.0,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Text(
                'yoyo Dashboard',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
              padding: const EdgeInsets.fromLTRB(30, 60, 30, 0),
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  prefixIcon: Icon(Icons.person_outline),
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(minWidth: 100, maxWidth: 200),
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: TextFormField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock_clock_outlined),
                ),
                onEditingComplete: () => submit(
                  context,
                  nameController.text,
                  passwordController.text,
                ),
              ),
            ),
            Container(
              constraints: const BoxConstraints(minWidth: 50, maxWidth: 50),
              height: 80,
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: ElevatedButton.icon(
                label: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                icon: Icon(Icons.login_outlined),
                onPressed: () => submit(
                  context,
                  nameController.text,
                  passwordController.text,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign up',
                    // style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
