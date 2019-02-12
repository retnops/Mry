import 'package:flutter/material.dart';

//TAB 5//
class News extends StatefulWidget {
  @override
  _NewsState createState() => new _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xFFFEE9E95), title: const Text("News")),
        //backgroundColor: Colors.white,
        body: Container(
          child: new Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  "News",
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
