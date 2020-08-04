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
        margin: EdgeInsets.only(left: 4.0, top: 4.0, right: 4.0),
        child: Card(
          color: Colors.blue[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width/3,
                padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(items.gambarKandang),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(items.namaKandang)
                  ],
                ),
              ),
              Container(
                child: Text("${items.poinKandang} - ${items.poinTandang}",
                    style: TextStyle(fontSize: 24.0, color: Colors.blueGrey)),
              ),
              Container(
                width: MediaQuery.of(context).size.width/3,
                padding: EdgeInsets.only(top: 4.0, bottom: 4.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(items.gambarTandang),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(items.namaTandang)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
