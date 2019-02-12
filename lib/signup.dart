import 'package:flutter/material.dart';
import 'package:mry/forgetpassword.dart';
import 'package:mry/homepage.dart';
import 'package:mry/main_tab/mry.dart';
import 'package:mry/signin.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => new _SignupState();
}

class _SignupState extends State<Signup> {
  Widget TopLayout() {
    return new Container(
      padding: EdgeInsets.only(top: 100.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage("assets/mry_half.png"),
            fit: BoxFit.cover,
          ),
          border: Border.all(width: 0.0, color: Colors.grey),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32.0),
              bottomRight: Radius.circular(32.0))),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Row(
              children: <Widget>[
                Text("Welcome ",
                    style: TextStyle(fontSize: 30.0, color: Colors.white)),
                Text(
                  "몬베베, ",
                  style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Sign up to continue",
                    style: TextStyle(
                        fontSize: 18.0, color: const Color(0xFFFEE9E95)),
                  )
                ],
              )),
          new Container(
            padding: new EdgeInsets.only(bottom: 130.0),
          ),
        ],
      ),
    );
  }

  Widget container1() {
    return new Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 0.0),
      child: new Column(
        children: <Widget>[
          TopLayout(),
        ],
      ),
    );
  }

  Widget forsignin() {
    return new FlatButton(
      child: Text(
        "Sign In",
        style: TextStyle(color: Color(0xFFFEE9E95)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signin()),
        );
      },
    );
  }

  final username = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
//    initialValue: 'alucard@gmail.com',
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFFEE9E95)),
          borderRadius: const BorderRadius.all(Radius.circular(32.0))),
      hintText: 'Username',
      hintStyle: TextStyle(color: Colors.grey),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    ),
  );

  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
//    initialValue: 'alucard@gmail.com',
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFFEE9E95)),
          borderRadius: const BorderRadius.all(Radius.circular(32.0))),
      hintText: 'Email',
      hintStyle: TextStyle(color: Colors.grey),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    ),
  );

  final password = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
//    initialValue: '12345',
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFFFEE9E95)),
          borderRadius: const BorderRadius.all(Radius.circular(32.0))),
      hintText: 'Password',
      hintStyle: TextStyle(color: Colors.grey),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
    ),
  );

  Widget SignUpButton() {
    return new Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: new ButtonTheme(
          minWidth: 200.0,
          height: 45.0,
          child: new RaisedButton(
            child: const Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 15.0),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            color: Color(0xFFFEE9E95),
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(13.0),
            ),
          ),
        ));
  }

  Widget other() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text(
            "Facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          onPressed: () {
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => HomePage()),
//            );
          },
        ),
        Text(
          "or",
          style: TextStyle(color: Colors.grey),
        ),
        FlatButton(
          child: Text(
            "Google",
            style: TextStyle(
                color: Colors.red, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          onPressed: () {
//            Navigator.push(
//              context,
//              MaterialPageRoute(builder: (context) => HomePage()),
//            );
          },
        )
      ],
    );
  }

  Widget _buttonTopUp(BuildContext context) {
    return Positioned(
        top: 195.0,
        left: 20.0,
        right: 20.0,
        // height: 100.0,
        child: SizedBox(
            child: Container(
          height: 350.0,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                new BoxShadow(
                  color: const Color(0xFFFD3D3D3),
                  blurRadius: 30.0,
                ),
              ],
//              border: Border.all(width: 0.0, color: Colors.grey),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 5.0, right: 5.0, bottom: 10.0),
                alignment: Alignment.topRight,
                child: forsignin(),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 00.0, 20.0, 10.0),
                child: username,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 00.0, 20.0, 10.0),
                child: email,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 00.0, 20.0, 10.0),
                child: password,
              ),
              SignUpButton(),
              Container(
                child: other(),
              ),
            ],
          ),
        )));
  }

//  Widget _textOther(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.only(bottom: 70.0),
//      child: Align(
//        alignment: Alignment.bottomCenter,
//        child: Text(
//          "Or sign in with",
//          style: TextStyle(
//              color: Colors.black54, fontSize: 13, fontWeight: FontWeight.w700),
//        ),
//      ),
//    );
//  }
//
//  Widget _otherFer(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.only(bottom: 10.0),
//      child: Align(
//        alignment: Alignment.bottomCenter,
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//          children: <Widget>[
//            Container(
//                margin: EdgeInsets.only(left: 40.0),
//                child: FlatButton(
//                    onPressed: null,
//                    child: Container(
//                      height: 30.0,
//                      width: 100.0,
//                      child: Image(image: AssetImage("assets/facebook.png")),
//                    ))),
//            Container(
//                margin: EdgeInsets.only(right: 40.0),
//                child: FlatButton(
//                    onPressed: null,
//                    child: Container(
//                      height: 30.0,
//                      width: 100.0,
//                      child: Image(image: AssetImage("assets/google.png")),
//                    )))
//          ],
//        ),
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        body: new Stack(
          children: <Widget>[
            container1(),
            _buttonTopUp(context),
//            _textOther(context),
//            _otherFer(context)
          ],
        ),
      ),
    );
  }
}
