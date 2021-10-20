import 'dart:async';
import 'package:flutter/material.dart';
import 'package:strat/screens/homepage.dart';

class Splashscreen extends StatefulWidget {
  @override
  SplashscreenState createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Homepage(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Text(
          "STRAT by NUST!!!!",
          style: TextStyle(
            fontSize: 50.0,
            color: Colors.white,
            fontFamily: "Arial",
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}