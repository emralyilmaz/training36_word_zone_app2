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
  void getVeri() async {
    Response res = await get("https://jsonplaceholder.typicode.com/albums/2");
    // print(res.body);
    Map veri = jsonDecode(res.body);
    print(veri);
    print(veri["userId"]);
    print(veri["id"]);
  }

  @override
  void initState() {
    getVeri();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Yükleniyor")),
    );
  }
}
