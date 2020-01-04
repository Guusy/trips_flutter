import 'package:flutter/material.dart';
import 'package:trips/trips.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trips',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Trips(),
    );
  }
}
