import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _OtpPageState createState() => new _OtpPageState();
}

class _OtpPageState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.white,
        body: Container(
          child: new Container(
              child: Center(
            child: Text(
              "Forget Password?",
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
