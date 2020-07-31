import 'package:flutter/material.dart';
import 'package:sepakbola/screen/splashScreen.dart';
import 'package:sepakbola/session/sharedPref.dart';

class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text("Profil Anda"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage("asset/user.png"),
              backgroundColor: Colors.transparent,
            ),
            Text("Username :", style: TextStyle(fontSize: 32.0)),
            Text("${SplashScreen.name}", style: TextStyle(fontSize: 20.0)),
            RaisedButton(
                child: Text("Logout"),
                color: Colors.blue[100], onPressed: () {
                  SharedPref.clear();
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/splash", (Route<dynamic> route) => false);
            }
            )
          ],
        ),
      ),
    );
  }
}
