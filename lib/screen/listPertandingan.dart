import 'package:flutter/material.dart';
import 'package:sepakbola/model/pertandingan.dart';

class listPertandingan extends StatefulWidget {
  @override
  _listPertandinganState createState() => _listPertandinganState();
}

class _listPertandinganState extends State<listPertandingan> {
  List<pertandingan> daftarPertandingan;

  @override
  void initState() {
    daftarPertandingan = getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text("List Pertandingan"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: daftarPertandingan.length,
            itemBuilder: (context, position) {
              return pertandingan.createItem(daftarPertandingan[position], context);
            }),
      ),
    );
  }
}

getAll(){
  return [
    pertandingan(
      namaKandang: "Arsenal",
      gambarKandang: "https://cdn.freebiesupply.com/logos/large/2x/arsenal-6-logo-png-transparent.png",
      namaTandang: "Liverpool",
      gambarTandang: "https://lh3.googleusercontent.com/proxy/IaunPpXGmWcxll88SCwYHcH4Gg6glQcAsF_z1PNWg1Ulejtrfo7eeGhElK32LOOB_RNMBK8bOKFMgxLY2ncSx-7ZDxWCFhrKdWgqQpFzcCskXAuIcQY",
      poinKandang: 2,
      poinTandang: 1,
      deskripsiKandang: "Arsenal Football Club adalah klub sepak bola profesional Inggris yang berbasis di daerah Holloway, London. didirikan pada 1886 dengan nama Dial Square.",
      deskripsiLawan: "Liverpool Football Club adalah sebuah klub sepak bola asal Inggris yang berbasis di Kota Liverpool. Saat ini Liverpool adalah peserta Liga Utama Inggris. Liverpool juga merupakan juara dari Liga Utama Inggris musim 2019–2020"
    ),
    pertandingan(
        namaKandang: "Bayern",
        gambarKandang: "https://lh3.googleusercontent.com/proxy/hoX0soi5mz-M0FQx-ckLEIjc5f7UHGHWYMfgBEI9imXw-eUd-qUIAuYFHLOyV3AZ45_tfUX-PEU6Ygw6NjD7bpT4MfC10t9D34T8J21IMdk6n7MerMM",
        namaTandang: "Dortmund",
        gambarTandang: "https://lh3.googleusercontent.com/proxy/T3zthdKs_FFw29HJb92dMyu6b1USZKIegudTD0By3tcHuLYdKo20p_K5w5Jz-NT4dIOQJZMes0Qr3Dzf48sky56av039UINIORGQLFQBIM6svGXqbLk",
        poinKandang: 5,
        poinTandang: 0,
        deskripsiKandang: "FC Bayern München, FC Bayern Munich, atau FC Bayern, adalah sebuah klub olahraga Jerman yang berbasis di München, Bavaria.",
        deskripsiLawan: "Dortmund umumnya dikenal sebagai Borussia Dortmund, atau BVB, adalah klub olahraga Jerman yang berbasis di Dortmund, Rhine-Westphalia Utara"
    ),
    pertandingan(
        namaKandang: "PSG",
        gambarKandang: "https://www.nicepng.com/png/detail/342-3429208_psg-paris-saint-germain-logo.png",
        namaTandang: "Lyon",
        gambarTandang: "https://i.dlpng.com/static/png/105795_thumb.png",
        poinKandang: 6,
        poinTandang: 3,
        deskripsiKandang: "Paris Saint-Germain Football Club atau dikenal luas dengan sebutan PSG merupakan sebuah tim sepak bola Prancis yang bermain di Ligue 1, Prancis. Bermarkas di Paris, Prancis. ",
        deskripsiLawan: "Olympique Lyonnais adalah salah satu klub yang paling didukung di Prancis"
    ),
    pertandingan(
        namaKandang: "Porto FC",
        gambarKandang: "https://i.pinimg.com/originals/03/6f/8f/036f8ff12c14714b0ebd989591691a74.png",
        namaTandang: "Benfica FC",
        gambarTandang: "https://i.dlpng.com/static/png/7217601_thumb.png",
        poinKandang: 2,
        poinTandang: 1,
        deskripsiKandang: "Futebol Clube do Porto adalah sebuah klub olahraga di Portugal yang paling dikenal lewat klub sepak bolanya. Klub olahraga ini idirikan pada tahun 1893 oleh António Nicolau de Almeida di Porto. Bersama dengan Sporting Lisboa dan Benfica",
        deskripsiLawan: "SL Benfica atau biasa dikenal dengan nama Benfica adalah klub sepak bola Portugal. klub yang didirikan pada tanggal 28 Februari 1904 ini memainkan partai kandangnya di kota Lisbon"
    ),
    pertandingan(
        namaKandang: "Valencia",
        gambarKandang: "https://seeklogo.net/wp-content/uploads/2012/02/valencia-vector-logo-400x400.png",
        namaTandang: "Barcelona",
        gambarTandang: "https://brandslogo.net/wp-content/uploads/2018/10/new-fc-barcelona-logo.png",
        poinKandang: 2,
        poinTandang: 2,
        deskripsiKandang: "Valencia Club de Fútbol bahasa Spanyol, bahasa Valencia: València Club de Futbol; merupakan sebuah klub sepak bola Spanyol yang bermain di Divisi Primera Spanyol, La Liga. Tim ini bermarkas di Valencia, Spanyol. Didirikan pada tahun 1919.",
        deskripsiLawan: "Fútbol Club Barcelona, juga dikenal sebagai Barcelona atau Barça, adalah klub sepak bola profesional yang berbasis di Barcelona, Catalunya, Spanyol"
    ),
    pertandingan(
        namaKandang: "Sevilla",
        gambarKandang: "https://i.dlpng.com/static/png/176462_thumb.png",
        namaTandang: "Villareal",
        gambarTandang: "https://i.dlpng.com/static/png/485476_preview.png",
        poinKandang: 1,
        poinTandang: 0,
        deskripsiKandang: "Sevilla FC adalah nama tim sepak bola Spanyol. Berbasis di Sevilla. Tim ini didirikan tahun 1890. Sevilla hanya sekali menjuarai Liga Spanyol, yaitu pada tahun 1946.",
        deskripsiLawan: "Villarreal CF adalah nama tim sepak bola Spanyol yang bermarkas di kota Villarreal. Tim ini berdiri pada tahun 1932 dengan stadion kandang di El Madrigal."
    ),
    pertandingan(
        namaKandang: "Manchester United",
        gambarKandang: "https://pngimg.com/uploads/manchester_united/manchester_united_PNG16.png",
        namaTandang: "Manchaster City",
        gambarTandang: "https://logodownload.org/wp-content/uploads/2017/02/manchester-city-fc-logo-escudo-badge-5.png",
        poinKandang: 3,
        poinTandang: 4,
        deskripsiKandang: "Manchester United Football Club adalah sebuah klub sepak bola profesional Inggris yang berbasis di Old Trafford, Manchester Raya, yang bermain di Liga Inggris. ",
        deskripsiLawan: "Manchester City Football Club adalah sebuah klub sepak bola profesional dari Inggris yang bermain di Liga Premier Inggris. Klub ini merupakaan klub sekota dengan Manchester United dan bermarkas di Stadion Etihad"
    )
  ];
}