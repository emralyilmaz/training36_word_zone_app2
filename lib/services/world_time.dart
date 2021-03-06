import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String konum;
  String zaman;
  String url;
  String bayrak;
  bool gunZaman;

  WorldTime({this.konum, this.url, this.bayrak});

  Future<void> getZaman() async {
    try {
      Response res = await get("http://worldtimeapi.org/api/timezone/$url");
      Map veri = jsonDecode(res.body);
      String datetime = veri["datetime"];
      DateTime now = DateTime.parse(datetime);
      String offset = veri["utc_offset"].substring(1, 3);
      now = now.add(Duration(hours: int.parse(offset)));
      gunZaman = now.hour > 6 && now.hour < 20 ? true : false;

      zaman = DateFormat.jm().format(now); // zaman: 9:58 AM
    } catch (e) {
      zaman = "zaman bilgisi getirilemedi.";
    }
  }
}
