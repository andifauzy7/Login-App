import 'package:flutter/material.dart';
import 'package:sepakbola/screen/dashboard.dart';
import 'package:sepakbola/screen/login.dart';
import 'package:sepakbola/session/sharedPref.dart';
import 'package:toast/toast.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var dura = const Duration(seconds: 3);

  @override
  void initState() {
    afterFirstLayout(context);
    super.initState();
  }

  void afterFirstLayout(BuildContext context) {
    new Future.delayed(dura, handleTapEvent);
  }

  Future<String> isSession() async {
    if (SharedPref.getUsername() != null) {
      return await SharedPref.getUsername();
    } else {
      return null;
    }
  }

  void handleTapEvent() async {
    String username = await isSession();
    if(username!=null){
      // Jika username ada masuk ke main.
      Toast.show("Anda sudah Login : ${username}", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      Navigator.pushNamedAndRemoveUntil(
          context, "/main", (Route<dynamic> route) => false);
    } else {
      // Jika tidak ada maka masuk ke login.
      Toast.show("Anda belum Login", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      Navigator.pushNamedAndRemoveUntil(
          context, "/login", (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("asset/football.png", width: 200.0),
            Text("Aplikasi Sepakbola",
                style: TextStyle(fontSize: 28.0, color: Colors.blue))
          ],
        ),
      ),
    );
  }
}