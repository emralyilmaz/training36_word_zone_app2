import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map routeVeriler = {};

  @override
  Widget build(BuildContext context) {
    routeVeriler = ModalRoute.of(context).settings.arguments;
    // artık routeverilerin içerisinde yukleniyor.darttaki argumanlar var.
    print(routeVeriler);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/konum");
                },
                icon: Icon(Icons.edit_location),
                label: Text("Konum Düzenle"))
          ],
        ),
      )),
    );
  }
}
