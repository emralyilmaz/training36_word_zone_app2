import 'package:flutter/material.dart';

class Konum extends StatefulWidget {
  @override
  _KonumState createState() => _KonumState();
}

class _KonumState extends State<Konum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 223, 252, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(52, 56, 56, 1),
        title: Text("Konum Seç"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: Text("Konum"),
      ),
    );
  }
}
