import 'package:flutter/material.dart';

//TAB 2//
class Monbebe extends StatefulWidget {
  @override
  _MonbebeState createState() => new _MonbebeState();
}

class _MonbebeState extends State<Monbebe> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xFFFEE9E95), title: const Text("Monbebe")),
        //backgroundColor: Colors.white,
        body: Container(
          child: new Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  "Monbebe",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFFEE9E95)),
                ),
              )),
        ),
      ),
    );
  }
}
