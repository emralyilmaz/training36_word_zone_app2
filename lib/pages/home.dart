import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map routeVeriler = {};
  String bgResim;

  @override
  Widget build(BuildContext context) {
    routeVeriler = ModalRoute.of(context).settings.arguments;
    // artık routeverilerin içerisinde yukleniyor.darttaki argumanlar var.
    bgResim = routeVeriler["gunZaman"] ? "daytime.jpg" : "night.jpg";
    print(bgResim);
    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/$bgResim"),
                fit: BoxFit.cover //resim düşey olarak coverlandı.
                )),
        child: Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Column(
            children: [
              FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, "/konum");
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text("Konum Düzenle",
                      style: TextStyle(color: Colors.white))),
              SizedBox(height: 50.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    routeVeriler["konum"],
                    style: TextStyle(
                        fontSize: 25, letterSpacing: 2.0, color: Colors.white),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    routeVeriler["zaman"],
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
