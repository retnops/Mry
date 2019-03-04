import 'package:flutter/material.dart';
import 'package:mry/fab_bottom_app_bar.dart';
import 'package:mry/main_tab/mine.dart';
import 'package:mry/main_tab/monbebe.dart';
import 'package:mry/main_tab/mry.dart';
import 'package:mry/main_tab/news.dart';
import 'package:mry/main_tab/thought.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
//      theme: new ThemeData(
//        primarySwatch: ,
//      ),
      home: new FabPage(),
    );
  }
}

class FabPage extends StatefulWidget {
  @override
  _FabPageState createState() => new _FabPageState();
}

class _FabPageState extends State<FabPage> with TickerProviderStateMixin {
  int _lastSelected = 0;

  pageChooser() {
    switch (this._lastSelected) {
      case 0:
        return new Mry();
        break;

      case 1:
        return new Monbebe();
        break;

      case 2:
        return new Mine();
        break;

      case 3:
        return new News();
        break;

      default:
        return new Container(
          child: new Center(
              child: new Text('No page found by page chooser.',
                  style: new TextStyle(fontSize: 30.0))),
        );
    }
  }

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageChooser(),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: '',
        color: Colors.grey,
        selectedColor: Color(0xFFFEE9E95),
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: _selectedTab,
        items: [
          FABBottomAppBarItem(iconData: Icons.spa, text: 'Mry'),
          FABBottomAppBarItem(iconData: Icons.layers, text: 'Monbebe'),
          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Mine'),
          FABBottomAppBarItem(iconData: Icons.info, text: 'News'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(backgroundColor: Color(0xFFFEE9E95),
        child: Icon(Icons.ac_unit),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Thought()),
          );
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
