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
        body: Container(
          color: Colors.green,
          width: 100.0,
          height: 100.0,
          padding: EdgeInsets.all(5.0),
          child: OverflowBox(
            alignment: Alignment.topLeft,
            maxHeight: 300.0,
            maxWidth:  300.0,

            child: Container(
              color: Colors.blueGrey,
              width: 250.0,
              height: 300.0,
            ),

          ),


        ),
      ),
    );
  }
}
