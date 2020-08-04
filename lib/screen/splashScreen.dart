import 'package:flutter/material.dart';
import 'package:sepakbola/constant/constant.dart';
import 'package:sepakbola/session/sharedPref.dart';
import 'package:toast/toast.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var duration = const Duration(seconds: 3);

  @override
  void initState() {
    afterFirstLayout(context);
    super.initState();
  }

  void afterFirstLayout(BuildContext context) {
    new Future.delayed(duration, handleTapEvent);
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
    constant.USERNAME_VALUE = username;
    if(username!=null){
      // Jika username ada masuk ke main.
      Toast.show("Anda sudah Login : $username", context,
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
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("asset/football.jpg", width: 200.0),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
