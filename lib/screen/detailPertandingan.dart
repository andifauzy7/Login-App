import 'package:flutter/material.dart';
import 'package:sepakbola/model/pertandingan.dart';

class detailPertandingan extends StatelessWidget {
  pertandingan satuPertandingan;
  detailPertandingan(this.satuPertandingan);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Pertandingan"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blue,
            Colors.lightBlueAccent,
          ]),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.blue[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage:
                                NetworkImage(satuPertandingan.gambarKandang),
                            backgroundColor: Colors.transparent,
                          ),
                          Text(satuPertandingan.namaKandang)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Text("VS"),
                          Text(
                              "${satuPertandingan.poinKandang} - ${satuPertandingan.poinTandang}",
                              style: TextStyle(fontSize: 32.0)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 40.0,
                            backgroundImage:
                                NetworkImage(satuPertandingan.gambarTandang),
                            backgroundColor: Colors.transparent,
                          ),
                          Text(satuPertandingan.namaTandang)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.green[100],
                  child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(satuPertandingan.deskripsiKandang)),
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: Colors.red[100],
                  child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(satuPertandingan.deskripsiLawan)),
                ))
          ],
        ),
      ),
    );
  }
}
