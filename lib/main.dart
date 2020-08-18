import 'package:flutter/material.dart';
import 'package:training36_word_zone_app2/pages/home.dart';
import 'package:training36_word_zone_app2/pages/yukleniyor.dart';
import 'pages/home.dart';
import 'package:training36_word_zone_app2/pages/konum_sec.dart';

void main() => runApp(MaterialApp(
      initialRoute: "/home",
      routes: {
        "/": (context) => Yukleniyor(),
        "/home": (context) => Home(),
        "/konum": (context) => Konum()
      },
    ));
