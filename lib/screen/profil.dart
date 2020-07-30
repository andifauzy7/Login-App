import 'package:flutter/material.dart';

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
            Text("Andifauzy7", style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }
}
