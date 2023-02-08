import 'package:flutter/material.dart';

List<Kisi> kisilistesi=[
    Kisi(isim:"Ozan Tufan",ulke:"turkey",takim:"fenerbahce"),
    Kisi(isim:"ömer",ulke:"italya",takim:"galatasaray"),
    Kisi(isim:"Arda Güler",ulke:"abd",takim:"fenerbahce"),
    Kisi(isim:"faruk",ulke:"italya",takim:"fenerbahce")
  ];

class Kisi {
String isim;
String ulke;
String takim;
Kisi({ required this.isim,required this.ulke,required this.takim});
}
Kisi kisi=Kisi(isim:"ömer",ulke:"italya",takim:"galatasaray");