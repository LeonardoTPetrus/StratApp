import 'package:flutter/material.dart';
import 'package:strat/screens/homepage.dart';

// ignore: must_be_immutable
class Resultpage extends StatefulWidget {
  int marks;
  Resultpage({Key key , @required this.marks}) : super(key : key);
  @override
  ResultpageState createState() => ResultpageState(marks);
}

class ResultpageState extends State<Resultpage> {

  List<String> images = [
    "assets/images/didyouknow.png",
  ];

  String message;
  String image;

  @override
  void initState(){
    if(marks < 20){
      image = images[0];
      message = "You Scored $marks\n DID YOU KNOW?\n The 3 Basic Enablers For the strategic plan are:\n Finance, Staff and Infrastructure";
    }else if(marks < 35){
      image = images[0];
      message = "You Scored $marks\n DID YOU KNOW?\n The 3 Basic Enablers For the strategic plan are:\n Finance, Staff and Infrastructure";
    }else{
      image = images[0];
      message = "You Scored $marks\n DID YOU KNOW?\n The 3 Basic Enablers For the strategic plan are:\n Finance, Staff and Infrastructure";
    }
    super.initState();
  }

  int marks;
  ResultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              image,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 15.0,
                      ),
                      child: Center(
                      child: Text(
                        message,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: "Quando",
                        ),
                      ),
                    )
                    ),
                  ],
                ),
              ),
            ),            
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ));
                  },
                  child: Text(
                    "Back Home",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}