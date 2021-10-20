import 'package:flutter/material.dart';
import 'package:strat/screens/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "STRAT by NUST",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Splashscreen(),
    );
  }
}