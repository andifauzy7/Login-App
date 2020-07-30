import 'package:flutter/material.dart';
import 'package:sepakbola/screen/dashboard.dart';
import 'package:sepakbola/screen/login.dart';
import 'package:sepakbola/screen/splashScreen.dart';

void main() {
  final routes = <String, WidgetBuilder>{
    //
  };
  runApp(new MaterialApp(
    title: "Sepakbola",
    //debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    //home: PaymentInfo(),
    onGenerateRoute: (RouteSettings settings) {
      switch (settings.name) {
        case '/dashboard':
          return _buildRoute(settings, new Dashboard());
          break;
        case '/login':
          return _buildRoute(settings, new Login());
          break;
        case '/main':
          return _buildRoute(settings, new Dashboard());
          break;
        default:
          return null;
      }
    },
    routes: routes,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Sepakbola',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

MaterialPageRoute _buildRoute(RouteSettings settings, Widget builder) {
  return new MaterialPageRoute(
    settings: settings,
    builder: (BuildContext context) => builder,
  );
}