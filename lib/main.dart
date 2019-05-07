import 'package:flutter/material.dart';

//void main() => runApp(MyApp());
void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //前景色（文本、按钮等）
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to flutter'),
        ),
        body: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: <Widget>[
            Container(
              height: 200,
              width: 100,
              color: Colors.grey,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.black,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.purple,
            ),
            Container(
              height: 200,
              width: 100,
              color: Colors.pink,
            ),
          ],
        )
      ),
    );
  }
}
