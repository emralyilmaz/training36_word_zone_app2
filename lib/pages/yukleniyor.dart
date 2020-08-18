// harici bir veri kaynağına geçen sürede(verilerin çekilme anının beklendiği süre) kullanılır.
// süre bitince istenilen sayfaya yönlendirilir.

import 'package:flutter/material.dart';
import 'package:training36_word_zone_app2/services/world_time.dart';

class Yukleniyor extends StatefulWidget {
  @override
  _YukleniyorState createState() => _YukleniyorState();
}

class _YukleniyorState extends State<Yukleniyor> {
  String zaman = "Yükleniyor.";
  void setupWorldTime() async {
    WorldTime nesne =
        WorldTime(konum: "Berlin", bayrak: "germany.png", url: "Europe/Berlin");

    await nesne.getZaman();
    //  print(nesne.zaman);

    setState(() {
      zaman = nesne.zaman;
    });

    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "konum": nesne.konum,
      "bayrak": nesne.bayrak,
      "zaman": nesne.zaman,
    });
  }

  @override
  void initState() {
    setupWorldTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Yükleniyor")),
    );
  }
}
