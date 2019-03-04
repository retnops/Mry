import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  NewsState createState() => new NewsState();
}

class NewsState extends State<News> {
  List<String> rows = new List<String>()
    ..add('Hyongwon Squid Dance')
    ..add('Kihyun Dance EXOs Tempo after Drunk in New Year Party')
    ..add('Jooheon Graduate from Aegyo')
    ..add('Kihyun Eat With Pen and Become Viral')
    ..add('We Are Here - World Tour Start in April')
    ..add('Kihyun Graduated from BoSoo Brothers')
    ..add('Minhyuk Wardrobe Malfunction Become Viral')
    ..add('I.M Nail Polish Have No Meaning')
    ..add('Kihyun Love Shownu More than Others')
    ..add('I.M Throwing Tantrum Toward Bread in Idol Room')
    ..add('Minhyuk is an Angel Who Stay Together Beside I.M')
    ..add('Jooheon Hate 93 Line So Much')
    ..add('MONSTA X Kiss Jooheon Cheek After Alligator 2nd Win')
    ..add('Alligator Stay in Chart for Almost 2 Weeks')
    ..add('Kihyun Smile is Everything')
    ..add('Hyongwon Sleep for 3 Days 2 Night');

  @override
  Widget build(BuildContext context) {
    final title = 'News';

    return new MaterialApp(
      title: title,
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xFFFEE9E95),
          title: new Text(title),
        ),
        body: new SortableListView(
          items: rows,
          itemBuilder: (_, int index) => new Card(
                child: new Container(
                  height: 65.0,
                  child: ListTile(
                      leading: Container(
                        height: 30.0,
                        width: 30.0,
                        child: new Image.asset('assets/mxlogo.png'),
                      ),
                      title: new Text(rows[index])),
                ),
              ),
        ),
      ),
    );
  }
}

class SortableListView extends StatefulWidget {
  final List items;
  final IndexedWidgetBuilder itemBuilder;

  SortableListView({this.items, this.itemBuilder})
      : assert(items != null),
        assert(itemBuilder != null);

  @override
  State createState() => new SortableListViewState();
}

class SortableListViewState extends State<SortableListView> {
  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(
      builder: (context, constraint) {
        return new ListView.builder(
          itemCount: widget.items.length + 1,
          addRepaintBoundaries: true,
          itemBuilder: (context, index) {
            return new LongPressDraggable<int>(
              data: index,
              child: new DragTarget<int>(
                onAccept: (int data) {
                  _handleAccept(data, index);
                },
                builder: (BuildContext context, List<int> data,
                    List<dynamic> rejects) {
                  List<Widget> children = [];

                  // If the dragged item is on top of this item, the we draw
                  // a half-visible item to indicate that dropping the dragged
                  // item will add it in this position.
                  if (data.isNotEmpty) {
                    children.add(
                      new Container(
                        decoration: new BoxDecoration(
                          border: new Border.all(
                              color: Colors.grey[600], width: 2.0),
                        ),
                        child: new Opacity(
                          opacity: 0.5,
                          child: _getListItem(context, data[0]),
                        ),
                      ),
                    );
                  }
                  children.add(_getListItem(context, index));

                  return new Column(
                    children: children,
                  );
                },
              ),
              onDragStarted: () {
                Scaffold.of(context).showSnackBar(
                  new SnackBar(
                      content: new Text("Drag the row to change places")),
                );
              },
              feedback: new Opacity(
                opacity: 0.75,
                child: new SizedBox(
                  width: constraint.maxWidth,
                  child: _getListItem(context, index, true),
                ),
              ),
              childWhenDragging: new Container(),
            );
          },
        );
      },
    );
  }

  void _handleAccept(int data, int index) {
    setState(() {
      // Decrement index so that after removing we'll still insert the item
      // in the correct position.
      if (index > data) {
        index--;
      }
      dynamic imageToMove = widget.items[data];
      widget.items.removeAt(data);
      widget.items.insert(index, imageToMove);
    });
  }

  Widget _getListItem(BuildContext context, int index, [bool dragged = false]) {
    // A little hack: our ListView has an extra invisible trailing item to
    // allow moving the dragged item to the last position.
    if (index == widget.items.length) {
      // This invisible item uses the previous item to determine its size. If
      // the list is empty, though, there's no dragging really.
      if (widget.items.isEmpty) {
        return new Container();
      }
      return new Opacity(
        opacity: 0.0,
        child: _getListItem(context, index - 1),
      );
    }

    return new Material(
      elevation: dragged ? 20.0 : 0.0,
      child: widget.itemBuilder(context, index),
    );
  }
}
