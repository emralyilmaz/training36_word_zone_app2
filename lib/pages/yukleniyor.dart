// harici bir veri kaynağına geçen sürede(verilerin çekilme anının beklendiği süre) kullanılır.
// süre bitince istenilen sayfaya yönlendirilir.

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Yukleniyor extends StatefulWidget {
  @override
  _YukleniyorState createState() => _YukleniyorState();
}

class _YukleniyorState extends State<Yukleniyor> {
  void getZaman() async {
    Response res =
        await get("http://worldtimeapi.org/api/timezone/Europe/Istanbul");
    Map veri = jsonDecode(res.body);
    //  print(veri);
    String dateTime = veri["datetime"];
    String offset = veri["utc_offset"];
    print(dateTime);
    print(offset);
  }

  @override
  void initState() {
    getZaman();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Yükleniyor")),
    );
  }
}
