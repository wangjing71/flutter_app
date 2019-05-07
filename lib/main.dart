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
        body: Center(
            child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.red,
                padding: EdgeInsets.all(5.0),
              ),
              flex: 1,
            ),
            Expanded(
              child: Container(
                color: Colors.yellow,
                padding: EdgeInsets.all(5.0),
              ),
              flex: 2,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.all(5.0),
              ),
              flex: 1,
            ),
          ],
        )),
      ),
    );
  }
}
