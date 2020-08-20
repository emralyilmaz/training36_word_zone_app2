import 'package:flutter/material.dart';
import 'package:training36_word_zone_app2/services/world_time.dart';

class Konum extends StatefulWidget {
  @override
  _KonumState createState() => _KonumState();
}

class _KonumState extends State<Konum> {
  List<WorldTime> konumlar = [
    WorldTime(url: "Europe/Istanbul", konum: "Istanbul", bayrak: "Turkiye.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 223, 252, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(52, 56, 56, 1),
          title: Text("Konum Seç"),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: konumlar.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                child: Card(
                  child: ListTile(
                    onTap: () {
                      print(konumlar[index].konum);
                    },
                    title: Text(konumlar[index].konum),
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/${konumlar[index].bayrak}"),
                    ),
                  ),
                ),
              );
            }));
  }
}
