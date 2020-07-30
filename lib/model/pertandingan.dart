import 'package:flutter/material.dart';
import 'package:sepakbola/screen/detailPertandingan.dart';
import 'package:toast/toast.dart';

class pertandingan {
  String namaKandang;
  String gambarKandang;
  String namaTandang;
  String gambarTandang;
  int poinKandang;
  int poinTandang;
  String deskripsiKandang;
  String deskripsiLawan;

  pertandingan(
      {this.namaKandang,
      this.gambarKandang,
      this.namaTandang,
      this.gambarTandang,
      this.poinKandang,
      this.poinTandang,
      this.deskripsiKandang,
      this.deskripsiLawan});

  static Widget createItem(pertandingan items, BuildContext context) {
    return InkWell(
      onTap: () {
        Toast.show("${items.namaKandang} vs ${items.namaTandang}", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
        Navigator.push(context, MaterialPageRoute(builder: (context) => detailPertandingan(items)));
      },
      child: Container(
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage(items.gambarKandang),
                    backgroundColor: Colors.transparent,
                  ),
                  Text(items.namaKandang)
                ],
              ),
              Text("${items.poinKandang} - ${items.poinTandang}",
                  style: TextStyle(fontSize: 24.0)),
              Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage(items.gambarTandang),
                    backgroundColor: Colors.transparent,
                  ),
                  Text(items.namaTandang)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
