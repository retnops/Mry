import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mry/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Mr. Y",
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        //brightness: Brightness.light,
        primaryColor: Colors.grey,
        fontFamily: 'Roboto',
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/signin': (BuildContext context) => new Signin(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() async {
//    SharedPreferences userSP = await SharedPreferences.getInstance();
//    bool isLoggedin = userSP.getBool('loggedin');
//    if (isLoggedin == null) {
    Navigator.of(context).pushReplacementNamed('/signin');
//    } else if (isLoggedin) {
//      Navigator.of(context).pushReplacementNamed('/home_page');
//    }
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: const Color(0xFFFEE9E95),
//      backgroundColor: Colors.amber,
      body: new Center(
        child: Container(
            width: 280.0,
            child: Hero(
              tag: 'hero',
              child: new Image.asset('assets/splash.png'),
            )),
      ),
    );
  }
}
