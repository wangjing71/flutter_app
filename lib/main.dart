import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(
        title: 'Weleome to flutter',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCount() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Weleome to flutter1'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('你点击的次数为：'),
            new Text('$counter'),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: incrementCount,
        child: new Icon(Icons.add),
        tooltip: 'Increment',
      ),
    );
  }
}
