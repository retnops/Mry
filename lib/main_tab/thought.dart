import 'package:flutter/material.dart';

//FAB//
class Thought extends StatefulWidget {
  @override
  _ThoughtState createState() => new _ThoughtState();
}

class _ThoughtState extends State<Thought> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.white,
        body: Container(
          child: new Container(
              color: Color(0xFFFEE9E95),
              child: Center(
                child: Text(
                  "Thought",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}
