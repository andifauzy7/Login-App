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
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(satuPertandingan.gambarKandang),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(satuPertandingan.namaKandang)
                  ],
                ),
                Text("VS", style: TextStyle(fontSize: 18.0),),
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(satuPertandingan.gambarTandang),
                      backgroundColor: Colors.transparent,
                    ),
                    Text(satuPertandingan.namaTandang)
                  ],
                ),
              ],
            ),
            Text("${satuPertandingan.poinKandang} - ${satuPertandingan.poinTandang}", style: TextStyle(fontSize: 32.0)),
            Text(satuPertandingan.deskripsiKandang),
            Text(satuPertandingan.deskripsiLawan)
          ],
        ),
      ),
    );
  }
}
