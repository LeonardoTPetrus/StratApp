import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:strat/screens/quizscreen.dart';



class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {

  List<String> img = [
    "assets/images/Polytechnic_of_Namibia_logo.png",
  ];

  List<String> description = [
    "Building a vibrant and engaging learning environment",
    "Driving research, innovation and entrepreneurship",
    "Strengthening stakeholder engagement",
    "Providing leadership in governance and management",
    "Securing Institutional sustainability",
  ];

  Widget customcard(String goalcat, String img, String description){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Getjson(goalcat),
          ));
        },
        child: Material(
          color: Colors.indigo,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            img,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    goalcat,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Arial",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontFamily: "Arial"
                    ),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                  
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown, DeviceOrientation.portraitUp
    ]);
    return Scaffold(
      appBar: AppBar(
        title: const Text('STRAT by NUST'),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(

              accountEmail: new Text("stratbynust@gmail.com"),
              accountName: new Text("John Doe"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  //backgroundImage: new NetworkImage(currentProfilePic),
                ),
                onTap: () => print("This is your current account."),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  child: new CircleAvatar(
                    //backgroundImage: new NetworkImage(otherProfilePic),
                  ),
                  //onTap: () => switchAccounts(),
                ),
              ],
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new NetworkImage("https://oilonga.media/wp-content/uploads/2018/04/nust.jpg"),
                  fit: BoxFit.fill
                )
              ),
            ),
            new ListTile(
              title: new Text("Add account"),
              trailing: new Icon(Icons.add),
              onTap: () {
                Navigator.of(context).pop();
                //Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("First Page")));
              }
            ),
            new ListTile(
              title: new Text("Settings"),
              trailing: new Icon(Icons.settings),
              onTap: () {
                Navigator.of(context).pop();
                //Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Page("Second Page")));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Home"),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          customcard("GOAL 1", img[0], description[0]),
          customcard("GOAL 2", img[0], description[1]),
          customcard("GOAL 3", img[0], description[2]),
          customcard("GOAL 4", img[0], description[3]),
          customcard("GOAL 5", img[0], description[4]),
        ],
      ),
    );
  }
}