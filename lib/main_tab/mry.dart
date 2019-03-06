import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//TAB 1//
class Mry extends StatefulWidget {
  @override
  _MryState createState() => new _MryState();
}

class _MryState extends State<Mry> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFFEE9E95),
            title: const Text("Explore Mr. Y")),
        //backgroundColor: Colors.white,
        body: new SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.all(5.0),
                      height: 450.0,
                      child: new Carousel(
                        borderRadius: true, radius: Radius.circular(15),
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.white,
                        indicatorBgPadding: 1.0,
                        dotBgColor: Colors.black.withOpacity(0.001),
                        images: [
                          new AssetImage('assets/mry1.jpg'),
                          new AssetImage('assets/mry2.jpg'),
                          new AssetImage('assets/mry3.jpg'),
                          new AssetImage('assets/mry4.jpg'),
                          new AssetImage('assets/mry5.jpg'),
                          new AssetImage('assets/mry6.jpg'),
                          new AssetImage('assets/mry7.jpg'),
                          new AssetImage('assets/mry8.jpg'),
                          new AssetImage('assets/mry9.jpg'),
                        ],
                      ))
                ],
              ),
              new Column(
                children: <Widget>[
                  new ExpansionTile(
                    title: new Text(
                      'No Mercy',
                      style: TextStyle(
                          color: Color(0xFFFEE9E95),
                          fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Yoo Ki-hyun, (Hangul: 유기현; born November 22, 1993) better known as Kihyun, is a South Korean singer and dancer. He is the main vocalist of South Korean boy band Monsta X, which debuted under Starship Entertainment in 2015 through Mnet survival show, No. Mercy.',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                  new ExpansionTile(
                    title: new Text(
                      'Monsta X',
                      style: TextStyle(
                          color: Color(0xFFFEE9E95),
                          fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Yoo Ki-hyun, (Hangul: 유기현; born November 22, 1993) better known as Kihyun, is a South Korean singer and dancer. He is the main vocalist of South Korean boy band Monsta X, which debuted under Starship Entertainment in 2015 through Mnet survival show, No. Mercy.',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                  new ExpansionTile(
                    title: new Text(
                      '유기현',
                      style: TextStyle(
                          color: Color(0xFFFEE9E95),
                          fontWeight: FontWeight.w500),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Yoo Ki-hyun, (Hangul: 유기현; born November 22, 1993) better known as Kihyun, is a South Korean singer and dancer. He is the main vocalist of South Korean boy band Monsta X, which debuted under Starship Entertainment in 2015 through Mnet survival show, No. Mercy.',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
