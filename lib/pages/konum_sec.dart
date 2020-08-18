import 'package:flutter/material.dart';

class Konum extends StatefulWidget {
  @override
  _KonumState createState() => _KonumState();
}

class _KonumState extends State<Konum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Text("Konum")),
    );
  }
}
