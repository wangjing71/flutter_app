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
            child: new Container(
          color: Colors.red,
          width: 300.0,
          height: 300.0,

            child: FractionallySizedBox(
              alignment: Alignment.topLeft,
              widthFactor: 0.5,
              heightFactor:1.5,
              child: Container(
                color: Colors.purple,
              ),
            ),
        )),
      ),
    );
  }
}
