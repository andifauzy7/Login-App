import 'package:flutter/material.dart';
import 'package:sepakbola/session/sharedPref.dart';
import 'package:toast/toast.dart';

class beranda extends StatefulWidget {
  @override
  _berandaState createState() => _berandaState();
}

class _berandaState extends State<beranda> {
  String username;

  Future<String> getUsername() async {
    this.username = await SharedPref.getUsername();
    Toast.show("Anda login sebagai : " + username, context,
        duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
  }

  @override
  void initState() {
    getUsername();
    super.initState();
  }

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
            Text(username ?? 'Pengguna',style: TextStyle(fontSize: 24.0, color: Colors.blue))
          ],
        ),
      ),
    );
  }
}
