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
    print(routeVeriler);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Column(
            children: [
              FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, "/konum");
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text("Konum Düzenle")),
              SizedBox(height: 50.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    routeVeriler["konum"],
                    style: TextStyle(fontSize: 25, letterSpacing: 2.0),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    routeVeriler["zaman"],
                    style: TextStyle(fontSize: 50),
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
