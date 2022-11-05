import 'package:ev_charging/admin.dart';
import 'package:ev_charging/user.dart';
import 'package:flutter/material.dart';

import 'package:test/test.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'EV Charging Station';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Colors.green,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/ev.png',
              height: 150,
              scale: 1,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: const Text(
                'Admin Login',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AdminLogin()));
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              child: const Text(
                'User Login',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const UserLogin()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
