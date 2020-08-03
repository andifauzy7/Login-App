import 'package:flutter/material.dart';
import 'package:sepakbola/constant/constant.dart';

class beranda extends StatefulWidget {
  @override
  _berandaState createState() => _berandaState();
}

// ignore: camel_case_types
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
            Text("${constant.USERNAME_VALUE}!",style: TextStyle(fontSize: 24.0, color: Colors.blue))
          ],
        ),
      ),
    );
  }
}
