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
    DateTime now = DateTime.parse(dateTime);
    // print(now);
    String offset =
        veri["utc_offset"].substring(1, 3); // 1. ile 3. indexler arasını alır.
    // print(dateTime);
    // print(offset);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
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
