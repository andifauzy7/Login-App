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
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.lightBlueAccent,
            ]),
          ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Selamat Datang, ${constant.USERNAME_VALUE}!',
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: CircleAvatar(
                  radius: 72.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('asset/profile.png'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
