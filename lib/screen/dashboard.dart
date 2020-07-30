import 'package:flutter/material.dart';
import 'package:sepakbola/screen/beranda.dart';
import 'package:sepakbola/screen/listPertandingan.dart';
import 'package:sepakbola/screen/profil.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = beranda();

  final List<Widget> screens = [beranda(), listPertandingan(), profil()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      currentScreen = screens[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: bucket, child: currentScreen),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.list),
            title: new Text('Pertandingan'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profil')
          )
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
    );
  }
}
