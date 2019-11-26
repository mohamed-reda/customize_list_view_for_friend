import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int tile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, int) {
          return buildTiles(list[int]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildTiles(int i) {
    if (i % 3 == 1) {
      return listItem(i);
    } else if (i % 3 == 2) {
      tile = i;
      return SizedBox();
    } else {
      return Column(
        children: <Widget>[
          listItem(tile),
          listItem(i),
        ],
      );
    }
  }
  Widget listItem(int i){
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        color: Colors.red,
        width: 40,
        height: 40,
        child: Text(
          '$i',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
