import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(
            child: Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              children: [
                Card(
                  color: Colors.white,
                  shadowColor: Colors.grey,
                  elevation: 5,
                  child: Text(
                    "Manage EV Vehicles",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Text(
                    "Find Station",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Text(
                    "View Bookings",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Text(
                    "Profile",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
