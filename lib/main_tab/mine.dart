import 'package:flutter/material.dart';

//TAB 4//
class Mine extends StatefulWidget {
  @override
  _MineState createState() => new _MineState();
}

class _MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xFFFEE9E95), title: const Text("Mine")),
        //backgroundColor: Colors.white,
        body: Container(
          child: new Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  "Mine",
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
