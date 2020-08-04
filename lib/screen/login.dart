import 'package:flutter/material.dart';
import 'package:sepakbola/constant/constant.dart';
import 'package:sepakbola/session/sharedPref.dart';
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var username = new TextEditingController();
  var password = new TextEditingController();

  void setSession(String username) {
    setState(() {
      constant.USERNAME_VALUE = username;
      SharedPref.setUsername(username);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: Icon(Icons.verified_user),
        title: Text("Halaman Login"),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            Image.asset("asset/login.jpg", height: MediaQuery.of(context).size.width / 2),
            SizedBox(height: 36.0),
            TextField(
              controller: username,
              decoration: InputDecoration(
                hintText: "Masukkan Username ...",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Masukkan Password ...",
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            SizedBox(height: 24.0),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    if(username.text=="" || password.text==""){
                      Toast.show("Isian tidak boleh kosong.", context,
                          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                    } else {
                      setSession(username.text);
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/main", (Route<dynamic> route) => false);
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
