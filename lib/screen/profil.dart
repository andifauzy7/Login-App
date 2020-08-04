import 'package:flutter/material.dart';
import 'package:sepakbola/constant/constant.dart';
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
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.lightBlueAccent,
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
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
              padding: EdgeInsets.only(
                  left: 24.0, right: 24.0, top: 16.0, bottom: 16.0),
              child: Container(
                  margin: EdgeInsets.only(left: 24.0, right: 24.0),
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(70.0))),
                  child: new Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "ANDI FAUZY DEWANTARA",
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "MAHASISWA T. INFORMATIKA",
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "USERNAME : ${constant.USERNAME_VALUE}",
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Text(
                "TENTANG SAYA",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
              child: Container(
                height: 2.0,
                width: MediaQuery.of(context).size.width/2,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu. ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('asset/facebook.png'),
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('asset/twitter.png'),
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('asset/linkedin.png'),
                      ),
                      CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('asset/instagram.png'),
                      )
                    ],
                  )),
            ),
            Center(
              child: Text(
                "KONTAK SAYA",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 4.0, bottom: 4.0),
                child: Container(
                  height: 2.0,
                  width: MediaQuery.of(context).size.width/2,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Text("+6285322677320",
                  style: TextStyle(color: Colors.white)),
            ),
            Center(
              child: Text("andi.fauzy.tif18@polban.ac.id",
                  style: TextStyle(color: Colors.white)),
            ),
            Center(
              child: Text("Komp. GBI Blok C13 No. 24, Ciwastra.",
                  style: TextStyle(color: Colors.white)),
            ),
            RaisedButton(
                child: Text("Logout"),
                color: Colors.blue[100],
                onPressed: () {
                  SharedPref.clear();
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/login", (Route<dynamic> route) => false);
                })
          ],
        ),
      ),
    );
  }
}
