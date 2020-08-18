// harici bir veri kaynağına geçen sürede(verilerin çekilme anının beklendiği süre) kullanılır.
// süre bitince istenilen sayfaya yönlendirilir.

import 'package:flutter/material.dart';

class Yukleniyor extends StatefulWidget {
  @override
  _YukleniyorState createState() => _YukleniyorState();
}

class _YukleniyorState extends State<Yukleniyor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Yükleniyor")),
    );
  }
}
