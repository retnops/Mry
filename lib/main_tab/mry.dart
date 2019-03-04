import 'package:flutter/material.dart';

//TAB 1//
class Mry extends StatefulWidget {
  @override
  _MryState createState() => new _MryState();
}

class _MryState extends State<Mry> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xFFFEE9E95), title: const Text("Explore Mr. Y")),
        //backgroundColor: Colors.white,
        body: Container(
          child: new Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  "Mry",
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
