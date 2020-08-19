import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String konum;
  String zaman;
  String url;
  String bayrak;

  WorldTime({this.konum, this.url, this.bayrak});

  Future<void> getZaman() async {
    try {
      Response res = await get("http://worldtimeapi.org/api/timezone/$url");
      Map veri = jsonDecode(res.body);
      String datetime = veri["datetime"];
      DateTime now = DateTime.parse(datetime);
      String offset = veri["utc_offset"].substring(1, 3);
      now = now.add(Duration(hours: int.parse(offset)));
      zaman = DateFormat.jm().format(now); // zaman: 9:58 AM
      // zaman = DateFormat.j().format(now); // zaman: 9 AM
      // zaman = DateFormat.d().format(now); // zaman: 19 (ayın 19.günü)
      // zaman = DateFormat.LLLL().format(now); // zaman: August(hangi ay olduğu tam)
      // zaman = DateFormat.LLL().format(now); // zaman: Aug(hangi ay olduğu tam)
      // zaman = DateFormat.yMMMd().format(now); // zaman: Aug 19, 2020
      // zaman = DateFormat.yMd().format(now); // zaman: 8/19/2020
      // zaman = DateFormat.Hm().format(now); // zaman: 10:02
      zaman = DateFormat.EEEE().format(now); // zaman: Wednesday
      zaman = DateFormat.E().format(now); // zaman: Wednesday
    } catch (e) {
      zaman = "zaman bilgisi getirilemedi.";
    }
  }
}
