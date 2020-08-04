import 'package:flutter/material.dart';
import 'package:sepakbola/constant/constant.dart';
import 'package:sepakbola/session/sharedPref.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}

// ignore: camel_case_types
class _profilState extends State<profil> {
  final photo = Center(
    child: Padding(
      padding: EdgeInsets.only(top: 16.0),
      child: CircleAvatar(
        radius: 72.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage('asset/profile.png'),
      ),
    ),
  );
  final descUser = Padding(
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
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text("Profil Anda"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.lightBlueAccent,
          ]),
        ),
        child: ListView(
          children: <Widget>[
            photo,
            descUser,
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
                      socialMediaIcon(context, 'asset/facebook.png', "https://www.facebook.com/andi.fauzy"),
                      socialMediaIcon(context, 'asset/twitter.png', "https://twitter.com/Andifauzy7"),
                      socialMediaIcon(context, 'asset/linkedin.png', "https://www.linkedin.com/in/andifauzy7/"),
                      socialMediaIcon(context, 'asset/instagram.png', "https://www.instagram.com/andifauzy7/"),
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
            SizedBox(height: 36.0),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Logout'),
                content: Text("Apakah kamu setuju untuk Logout?"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("YA"),
                    onPressed: () {
                      SharedPref.clear();
                      Navigator.of(context).pop();
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/login", (Route<dynamic> route) => false);
                    },
                  ),

                  FlatButton(
                    child: Text("TIDAK", style: TextStyle(color: Colors.red),),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: Colors.white,
        icon: Icon(Icons.person, color: Colors.blue,),
        label: Text("Logout", style: TextStyle(color: Colors.blue),),
      ),
    );
  }

  showAlert(BuildContext context, String url) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Kunjungi Link'),
          content: Text("Apakah kamu setuju mengunjungi link?"),
          actions: <Widget>[
            FlatButton(
              child: Text("YA"),
              onPressed: () {
                launch(url);
                Navigator.of(context).pop();
              },
            ),

            FlatButton(
              child: Text("TIDAK", style: TextStyle(color: Colors.red),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget socialMediaIcon(BuildContext context, String asset, String url) {
    return InkWell(
      child: CircleAvatar(
        radius: 25.0,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(asset),
      ),
      onTap: (){
        showAlert(context, url);
      },
    );
  }
}
