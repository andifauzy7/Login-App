import 'package:flutter/material.dart';
import 'package:sepakbola/screen/splashScreen.dart';

class beranda extends StatefulWidget {
  @override
  _berandaState createState() => _berandaState();
}

class _berandaState extends State<beranda> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Beranda"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Selamat Datang,", style: TextStyle(fontSize: 18.0)),
            Text("${SplashScreen.name}!",style: TextStyle(fontSize: 24.0, color: Colors.blue))
          ],
        ),
      ),
    );
  }
}
